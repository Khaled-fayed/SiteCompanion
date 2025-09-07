import 'package:drift/drift.dart';
import 'package:sitecompanion/domain/entities/project.dart';
import 'package:sitecompanion/data/local/app_database.dart';

abstract class ProjectSectionRepository {
  Future<List<ProjectSection>> getProjectSectionsForProject(String projectId);
  Future<ProjectSection?> getProjectSectionById(String id);
  Future<void> createProjectSection(ProjectSection section);
  Future<void> updateProjectSection(ProjectSection section);
  Future<void> deleteProjectSection(String id);
}

class ProjectSectionRepositoryImpl implements ProjectSectionRepository {
  final AppDatabase _database;

  ProjectSectionRepositoryImpl(this._database);

  @override
  Future<List<ProjectSection>> getProjectSectionsForProject(
    String projectId,
  ) async {
    final sectionEntities = await (_database.select(
      _database.projectSections,
    )..where((tbl) => tbl.projectId.equals(projectId))).get();
    return sectionEntities
        .map((e) => _mapProjectSectionEntityToProjectSection(e))
        .toList();
  }

  @override
  Future<ProjectSection?> getProjectSectionById(String id) async {
    final sectionEntity = await (_database.select(
      _database.projectSections,
    )..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
    return sectionEntity != null
        ? _mapProjectSectionEntityToProjectSection(sectionEntity)
        : null;
  }

  @override
  Future<void> createProjectSection(ProjectSection section) async {
    await _database
        .into(_database.projectSections)
        .insert(
          ProjectSectionsCompanion.insert(
            id: Value(section.id),
            projectId: section.projectId,
            title: section.title,
            content: Value(section.content),
            createdAt: Value(section.createdAt),
            updatedAt: Value(section.updatedAt),
            version: Value(section.version),
            deletedAt: Value(section.deletedAt),
          ),
        );
  }

  @override
  Future<void> updateProjectSection(ProjectSection section) async {
    await (_database.update(
      _database.projectSections,
    )..where((tbl) => tbl.id.equals(section.id))).write(
      ProjectSectionsCompanion(
        projectId: Value(section.projectId),
        title: Value(section.title),
        content: Value(section.content),
        updatedAt: Value(DateTime.now()),
        version: Value(section.version + 1),
        deletedAt: Value(section.deletedAt),
      ),
    );
  }

  @override
  Future<void> deleteProjectSection(String id) async {
    await (_database.delete(
      _database.projectSections,
    )..where((tbl) => tbl.id.equals(id))).go();
  }

  ProjectSection _mapProjectSectionEntityToProjectSection(
    ProjectSectionEntity entity,
  ) {
    return ProjectSection(
      id: entity.id,
      projectId: entity.projectId,
      title: entity.title,
      content: entity.content,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
      version: entity.version,
      deletedAt: entity.deletedAt,
    );
  }
}
