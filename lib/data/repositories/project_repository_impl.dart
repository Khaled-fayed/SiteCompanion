import 'package:drift/drift.dart';
import 'package:sitecompanion/domain/entities/project.dart';
import 'package:sitecompanion/data/local/app_database.dart';
import 'package:sitecompanion/data/repositories/project_repository.dart';

class ProjectRepositoryImpl implements ProjectRepository {
  final AppDatabase _database;

  ProjectRepositoryImpl(this._database);

  @override
  Future<List<Project>> getAllProjects() async {
    final projectEntities = await _database.select(_database.projects).get();
    return projectEntities.map((e) => _mapProjectEntityToProject(e)).toList();
  }

  @override
  Future<Project?> getProjectById(String id) async {
    final projectEntity = await (_database.select(
      _database.projects,
    )..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
    return projectEntity != null
        ? _mapProjectEntityToProject(projectEntity)
        : null;
  }

  @override
  Future<void> createProject(Project project) async {
    await _database
        .into(_database.projects)
        .insert(
          ProjectsCompanion.insert(
            id: Value(project.id),
            type: project.type,
            inspectionDate: project.inspectionDate,
            propertyAddress: project.propertyAddress,
            propertyName: project.propertyName,
            clientName: project.clientName,
            engineerName: project.engineerName,
            isArchived: Value(project.isArchived),
            reports: Value(project.reports),
            createdAt: Value(project.createdAt),
            updatedAt: Value(project.updatedAt),
            version: Value(project.version),
            deletedAt: Value(project.deletedAt),
          ),
        );
  }

  @override
  Future<void> updateProject(Project project) async {
    await (_database.update(
      _database.projects,
    )..where((tbl) => tbl.id.equals(project.id))).write(
      ProjectsCompanion(
        type: Value(project.type),
        inspectionDate: Value(project.inspectionDate),
        propertyAddress: Value(project.propertyAddress),
        propertyName: Value(project.propertyName),
        clientName: Value(project.clientName),
        engineerName: Value(project.engineerName),
        isArchived: Value(project.isArchived),
        reports: Value(project.reports),
        updatedAt: Value(DateTime.now()),
        version: Value(project.version + 1),
        deletedAt: Value(project.deletedAt),
      ),
    );
  }

  @override
  Future<void> deleteProject(String id) async {
    await (_database.delete(
      _database.projects,
    )..where((tbl) => tbl.id.equals(id))).go();
  }

  @override
  Future<void> archiveProject(String id) async {
    await (_database.update(_database.projects)
          ..where((tbl) => tbl.id.equals(id)))
        .write(ProjectsCompanion(isArchived: Value(true)));
  }

  @override
  Future<void> unarchiveProject(String id) async {
    await (_database.update(_database.projects)
          ..where((tbl) => tbl.id.equals(id)))
        .write(ProjectsCompanion(isArchived: Value(false)));
  }

  Project _mapProjectEntityToProject(ProjectEntity entity) {
    return Project(
      id: entity.id,
      type: entity.type,
      inspectionDate: entity.inspectionDate,
      propertyAddress: entity.propertyAddress,
      propertyName: entity.propertyName,
      clientName: entity.clientName,
      engineerName: entity.engineerName,
      isArchived: entity.isArchived,
      reports: entity.reports ?? [],
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
      version: entity.version,
      deletedAt: entity.deletedAt,
      // Sections and ObservedConditions are not directly mapped here as they are embedded in the domain model
      // but stored in separate tables in the database. They will be fetched separately or joined.
      sections: [], // Placeholder
      observedConditions: [], // Placeholder
    );
  }
}
