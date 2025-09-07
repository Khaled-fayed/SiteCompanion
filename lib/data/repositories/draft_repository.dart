import 'package:drift/drift.dart';
import 'package:sitecompanion/domain/entities/project.dart';
import 'package:sitecompanion/data/local/app_database.dart';
import 'dart:convert';

abstract class DraftRepository {
  Future<List<Draft>> getAllDrafts();
  Future<Draft?> getDraftById(String id);
  Future<Draft?> getDraftByEntity(String entityType, String entityId);
  Future<void> createDraft(Draft draft);
  Future<void> updateDraft(Draft draft);
  Future<void> deleteDraft(String id);
  Future<void> deleteDraftByEntity(String entityType, String entityId);
}

class DraftRepositoryImpl implements DraftRepository {
  final AppDatabase _database;

  DraftRepositoryImpl(this._database);

  @override
  Future<List<Draft>> getAllDrafts() async {
    final draftEntities = await _database.select(_database.drafts).get();
    return draftEntities.map((e) => _mapDraftEntityToDraft(e)).toList();
  }

  @override
  Future<Draft?> getDraftById(String id) async {
    final draftEntity = await (_database.select(
      _database.drafts,
    )..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
    return draftEntity != null ? _mapDraftEntityToDraft(draftEntity) : null;
  }

  @override
  Future<Draft?> getDraftByEntity(String entityType, String entityId) async {
    final draftEntity =
        await (_database.select(_database.drafts)..where(
              (tbl) =>
                  tbl.entityType.equals(entityType) &
                  tbl.entityId.equals(entityId),
            ))
            .getSingleOrNull();
    return draftEntity != null ? _mapDraftEntityToDraft(draftEntity) : null;
  }

  @override
  Future<void> createDraft(Draft draft) async {
    await _database
        .into(_database.drafts)
        .insert(
          DraftsCompanion.insert(
            id: Value(draft.id),
            entityType: draft.entityType,
            entityId: draft.entityId,
            payload: jsonEncode(draft.payload),
            updatedAt: Value(draft.updatedAt),
          ),
        );
  }

  @override
  Future<void> updateDraft(Draft draft) async {
    await (_database.update(
      _database.drafts,
    )..where((tbl) => tbl.id.equals(draft.id))).write(
      DraftsCompanion(
        entityType: Value(draft.entityType),
        entityId: Value(draft.entityId),
        payload: Value(jsonEncode(draft.payload)),
        updatedAt: Value(DateTime.now()),
      ),
    );
  }

  @override
  Future<void> deleteDraft(String id) async {
    await (_database.delete(
      _database.drafts,
    )..where((tbl) => tbl.id.equals(id))).go();
  }

  @override
  Future<void> deleteDraftByEntity(String entityType, String entityId) async {
    await (_database.delete(_database.drafts)..where(
          (tbl) =>
              tbl.entityType.equals(entityType) & tbl.entityId.equals(entityId),
        ))
        .go();
  }

  Draft _mapDraftEntityToDraft(DraftEntity entity) {
    return Draft(
      id: entity.id,
      entityType: entity.entityType,
      entityId: entity.entityId,
      payload: jsonDecode(entity.payload) as Map<String, dynamic>,
      updatedAt: entity.updatedAt,
    );
  }
}
