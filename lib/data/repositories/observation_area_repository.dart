import 'package:drift/drift.dart';
import 'package:sitecompanion/domain/entities/project.dart';
import 'package:sitecompanion/data/local/app_database.dart';

abstract class ObservationAreaRepository {
  Future<List<ObservationArea>> getObservationAreasForProject(String projectId);
  Future<ObservationArea?> getObservationAreaById(String id);
  Future<void> createObservationArea(ObservationArea area);
  Future<void> updateObservationArea(ObservationArea area);
  Future<void> deleteObservationArea(String id);
}

class ObservationAreaRepositoryImpl implements ObservationAreaRepository {
  final AppDatabase _database;

  ObservationAreaRepositoryImpl(this._database);

  @override
  Future<List<ObservationArea>> getObservationAreasForProject(
    String projectId,
  ) async {
    final areaEntities = await (_database.select(
      _database.observationAreas,
    )..where((tbl) => tbl.projectId.equals(projectId))).get();
    return areaEntities
        .map((e) => _mapObservationAreaEntityToObservationArea(e))
        .toList();
  }

  @override
  Future<ObservationArea?> getObservationAreaById(String id) async {
    final areaEntity = await (_database.select(
      _database.observationAreas,
    )..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
    return areaEntity != null
        ? _mapObservationAreaEntityToObservationArea(areaEntity)
        : null;
  }

  @override
  Future<void> createObservationArea(ObservationArea area) async {
    await _database
        .into(_database.observationAreas)
        .insert(
          ObservationAreasCompanion.insert(
            id: Value(area.id),
            projectId: area.projectId,
            name: area.name,
            createdAt: Value(area.createdAt),
            updatedAt: Value(area.updatedAt),
            version: Value(area.version),
            deletedAt: Value(area.deletedAt),
          ),
        );
  }

  @override
  Future<void> updateObservationArea(ObservationArea area) async {
    await (_database.update(
      _database.observationAreas,
    )..where((tbl) => tbl.id.equals(area.id))).write(
      ObservationAreasCompanion(
        projectId: Value(area.projectId),
        name: Value(area.name),
        updatedAt: Value(DateTime.now()),
        version: Value(area.version + 1),
        deletedAt: Value(area.deletedAt),
      ),
    );
  }

  @override
  Future<void> deleteObservationArea(String id) async {
    await (_database.delete(
      _database.observationAreas,
    )..where((tbl) => tbl.id.equals(id))).go();
  }

  ObservationArea _mapObservationAreaEntityToObservationArea(
    ObservationAreaEntity entity,
  ) {
    return ObservationArea(
      id: entity.id,
      projectId: entity.projectId,
      name: entity.name,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
      version: entity.version,
      deletedAt: entity.deletedAt,
      observations: [], // Placeholder, will be fetched separately or joined
    );
  }
}
