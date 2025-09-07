import 'package:drift/drift.dart';
import 'package:sitecompanion/domain/entities/observation.dart';
import 'package:sitecompanion/data/local/app_database.dart';
import 'package:sitecompanion/data/repositories/observation_repository.dart';

class ObservationRepositoryImpl implements ObservationRepository {
  final AppDatabase _database;

  ObservationRepositoryImpl(this._database);

  @override
  Future<List<Observation>> getObservationsForArea(String areaId) async {
    final observationEntities = await (_database.select(
      _database.observations,
    )..where((tbl) => tbl.areaId.equals(areaId))).get();
    return observationEntities
        .map((e) => _mapObservationEntityToObservation(e))
        .toList();
  }

  @override
  Future<Observation?> getObservationById(String id) async {
    final observationEntity = await (_database.select(
      _database.observations,
    )..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
    return observationEntity != null
        ? _mapObservationEntityToObservation(observationEntity)
        : null;
  }

  @override
  Future<void> createObservation(Observation observation) async {
    await _database
        .into(_database.observations)
        .insert(
          ObservationsCompanion.insert(
            id: Value(observation.id),
            projectId: observation.projectId, // Add projectId
            areaId: observation
                .areaId!, // areaId is now nullable in entity, but required in DB
            note: Value(observation.note),
            photoPath: Value(observation.photoPath),
            tags: Value(observation.tags),
            severity: Value(observation.severity),
            isAnnotated: Value(observation.isAnnotated),
            createdAt: Value(observation.createdAt),
            updatedAt: Value(observation.updatedAt),
            version: Value(observation.version),
            deletedAt: Value(observation.deletedAt),
          ),
        );
  }

  @override
  Future<void> updateObservation(Observation observation) async {
    await (_database.update(
      _database.observations,
    )..where((tbl) => tbl.id.equals(observation.id))).write(
      ObservationsCompanion(
        projectId: Value(observation.projectId), // Add projectId
        areaId: Value(
          observation.areaId!,
        ), // areaId is now nullable in entity, but required in DB
        note: Value(observation.note),
        photoPath: Value(observation.photoPath),
        tags: Value(observation.tags),
        severity: Value(observation.severity),
        isAnnotated: Value(observation.isAnnotated),
        updatedAt: Value(DateTime.now()),
        version: Value(observation.version + 1),
        deletedAt: Value(observation.deletedAt),
      ),
    );
  }

  @override
  Future<void> deleteObservation(String id) async {
    await (_database.delete(
      _database.observations,
    )..where((tbl) => tbl.id.equals(id))).go();
  }

  @override
  Stream<List<Observation>> watchAllObservations() {
    return _database
        .select(_database.observations)
        .watch()
        .map(
          (observationEntities) => observationEntities
              .map((e) => _mapObservationEntityToObservation(e))
              .toList(),
        );
  }

  @override
  Stream<List<Observation>> watchObservationsForProject(
    String targetProjectId,
  ) {
    return (_database.select(
      _database.observations,
    )..where((tbl) => tbl.projectId.equals(targetProjectId))).watch().map(
      (observationEntities) => observationEntities
          .map((e) => _mapObservationEntityToObservation(e))
          .toList(),
    );
  }

  Observation _mapObservationEntityToObservation(ObservationEntity entity) {
    return Observation(
      id: entity.id,
      projectId: entity.projectId, // Add projectId
      areaId: entity.areaId,
      note: entity.note,
      photoPath: entity.photoPath,
      tags: entity.tags ?? [],
      severity: entity.severity ?? 1.0,
      isAnnotated: entity.isAnnotated,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
      version: entity.version,
      deletedAt: entity.deletedAt,
    );
  }
}
