import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:uuid/uuid.dart';

part 'app_database.g.dart';

@DataClassName('ProjectEntity')
class Projects extends Table {
  TextColumn get id => text().clientDefault(() => Uuid().v4())();
  TextColumn get type => text()();
  DateTimeColumn get inspectionDate => dateTime()();
  TextColumn get propertyAddress => text()();
  TextColumn get propertyName => text()();
  TextColumn get clientName => text()();
  TextColumn get engineerName => text()();
  BoolColumn get isArchived => boolean().withDefault(const Constant(false))();
  TextColumn get reports => text()
      .map(const StringListConverter())
      .nullable()(); // Storing as JSON string
  DateTimeColumn get createdAt =>
      dateTime().clientDefault(() => DateTime.now())();
  DateTimeColumn get updatedAt =>
      dateTime().clientDefault(() => DateTime.now())();
  IntColumn get version => integer().withDefault(const Constant(1))();
  DateTimeColumn get deletedAt => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('ObservationEntity')
class Observations extends Table {
  TextColumn get id => text().clientDefault(() => Uuid().v4())();
  TextColumn get projectId =>
      text().references(Projects, #id)(); // Add projectId
  TextColumn get areaId => text().references(ObservationAreas, #id)();
  TextColumn get note => text().nullable()();
  TextColumn get photoPath => text().nullable()();
  TextColumn get tags => text()
      .map(const StringListConverter())
      .nullable()(); // Storing as JSON string
  RealColumn get severity => real().nullable()();
  BoolColumn get isAnnotated => boolean().withDefault(const Constant(false))();
  DateTimeColumn get createdAt =>
      dateTime().clientDefault(() => DateTime.now())();
  DateTimeColumn get updatedAt =>
      dateTime().clientDefault(() => DateTime.now())();
  IntColumn get version => integer().withDefault(const Constant(1))();
  DateTimeColumn get deletedAt => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('ObservationAreaEntity')
class ObservationAreas extends Table {
  TextColumn get id => text().clientDefault(() => Uuid().v4())();
  TextColumn get projectId => text().references(Projects, #id)();
  TextColumn get name => text()();
  DateTimeColumn get createdAt =>
      dateTime().clientDefault(() => DateTime.now())();
  DateTimeColumn get updatedAt =>
      dateTime().clientDefault(() => DateTime.now())();
  IntColumn get version => integer().withDefault(const Constant(1))();
  DateTimeColumn get deletedAt => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('ProjectSectionEntity')
class ProjectSections extends Table {
  TextColumn get id => text().clientDefault(() => Uuid().v4())();
  TextColumn get projectId => text().references(Projects, #id)();
  TextColumn get title => text()();
  TextColumn get content => text().nullable()();
  DateTimeColumn get createdAt =>
      dateTime().clientDefault(() => DateTime.now())();
  DateTimeColumn get updatedAt =>
      dateTime().clientDefault(() => DateTime.now())();
  IntColumn get version => integer().withDefault(const Constant(1))();
  DateTimeColumn get deletedAt => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('DraftEntity')
class Drafts extends Table {
  TextColumn get id => text().clientDefault(() => Uuid().v4())();
  TextColumn get entityType => text()(); // project | section | observation
  TextColumn get entityId => text()();
  TextColumn get payload =>
      text()(); // Storing Map<String, dynamic> as JSON string
  DateTimeColumn get updatedAt =>
      dateTime().clientDefault(() => DateTime.now())();

  @override
  Set<Column> get primaryKey => {id};
}

// Custom converter for List<String>
class StringListConverter extends TypeConverter<List<String>, String> {
  const StringListConverter();
  @override
  List<String> fromSql(String fromDb) {
    if (fromDb.isEmpty) return [];
    return fromDb.split(',');
  }

  @override
  String toSql(List<String> value) {
    return value.join(',');
  }
}

@DriftDatabase(
  tables: [Projects, Observations, ObservationAreas, ProjectSections, Drafts],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(driftDatabase(name: 'site_companion_db'));

  AppDatabase.fromExecutor(QueryExecutor e) : super(e);

  @override
  int get schemaVersion => 2;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) async {
        await m.createAll();
      },
      onUpgrade: (Migrator m, int from, int to) async {
        if (from < 2) {
          // Ensure a project exists to satisfy the foreign key constraint
          String? defaultProjectId;
          final existingProject = await (select(projects)).getSingleOrNull();
          if (existingProject == null) {
            // Create a dummy project if no projects exist
            final dummyProjectId = Uuid().v4();
            await into(projects).insert(
              ProjectsCompanion.insert(
                id: Value(dummyProjectId),
                type: 'Default',
                inspectionDate: DateTime.now(),
                propertyAddress: 'N/A',
                propertyName: 'Default Project',
                clientName: 'N/A',
                engineerName: 'N/A',
              ),
            );
            defaultProjectId = dummyProjectId;
          } else {
            defaultProjectId = existingProject.id;
          }

          // Add projectId column with a default value for existing rows
          // This will satisfy the NOT NULL constraint for existing rows
          await m.database.customStatement(
            'ALTER TABLE ${observations.actualTableName} ADD COLUMN project_id TEXT NOT NULL DEFAULT \'${defaultProjectId!}\' REFERENCES projects (id)',
          );
        }
      },
    );
  }
}
