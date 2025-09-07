import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'project.freezed.dart';
part 'project.g.dart';

@freezed
class Project with _$Project {
  const factory Project({
    required String id,
    required String type,
    required DateTime inspectionDate,
    required String propertyAddress,
    required String propertyName,
    required String clientName,
    required String engineerName,
    @Default([])
    List<ProjectSection>
    sections, // Embedded for simplicity, consider separate table for large apps
    @Default([]) List<ObservationArea> observedConditions, // Embedded
    @Default(false) bool isArchived,
    @Default([]) List<String> reports, // file paths
    required DateTime createdAt,
    required DateTime updatedAt,
    @Default(1) int version,
    DateTime? deletedAt,
  }) = _Project;

  factory Project.fromJson(Map<String, dynamic> json) =>
      _$ProjectFromJson(json);

  factory Project.create({
    required String type,
    required DateTime inspectionDate,
    required String propertyAddress,
    required String propertyName,
    required String clientName,
    required String engineerName,
  }) {
    final now = DateTime.now();
    return Project(
      id: Uuid().v4(),
      type: type,
      inspectionDate: inspectionDate,
      propertyAddress: propertyAddress,
      propertyName: propertyName,
      clientName: clientName,
      engineerName: engineerName,
      createdAt: now,
      updatedAt: now,
    );
  }
}

@freezed
class ProjectSection with _$ProjectSection {
  const factory ProjectSection({
    required String id,
    required String projectId,
    required String title,
    String? content,
    required DateTime createdAt,
    required DateTime updatedAt,
    @Default(1) int version,
    DateTime? deletedAt,
  }) = _ProjectSection;

  factory ProjectSection.fromJson(Map<String, dynamic> json) =>
      _$ProjectSectionFromJson(json);

  factory ProjectSection.create({
    required String projectId,
    required String title,
    String? content,
  }) {
    final now = DateTime.now();
    return ProjectSection(
      id: Uuid().v4(),
      projectId: projectId,
      title: title,
      content: content,
      createdAt: now,
      updatedAt: now,
    );
  }
}

@freezed
class ObservationArea with _$ObservationArea {
  const factory ObservationArea({
    required String id,
    required String projectId,
    required String name,
    @Default([]) List<Observation> observations, // Embedded
    required DateTime createdAt,
    required DateTime updatedAt,
    @Default(1) int version,
    DateTime? deletedAt,
  }) = _ObservationArea;

  factory ObservationArea.fromJson(Map<String, dynamic> json) =>
      _$ObservationAreaFromJson(json);

  factory ObservationArea.create({
    required String projectId,
    required String name,
  }) {
    final now = DateTime.now();
    return ObservationArea(
      id: Uuid().v4(),
      projectId: projectId,
      name: name,
      createdAt: now,
      updatedAt: now,
    );
  }
}

@freezed
class Observation with _$Observation {
  const factory Observation({
    required String id,
    required String areaId,
    String? note,
    String? photoPath,
    List<String>? tags,
    double? severity,
    @Default(false) bool isAnnotated,
    required DateTime createdAt,
    required DateTime updatedAt,
    @Default(1) int version,
    DateTime? deletedAt,
  }) = _Observation;

  factory Observation.fromJson(Map<String, dynamic> json) =>
      _$ObservationFromJson(json);

  factory Observation.create({
    required String areaId,
    String? note,
    String? photoPath,
    List<String>? tags,
    double? severity,
    bool isAnnotated = false,
  }) {
    final now = DateTime.now();
    return Observation(
      id: Uuid().v4(),
      areaId: areaId,
      note: note,
      photoPath: photoPath,
      tags: tags,
      severity: severity,
      isAnnotated: isAnnotated,
      createdAt: now,
      updatedAt: now,
    );
  }
}

@freezed
class Draft with _$Draft {
  const factory Draft({
    required String id,
    required String entityType,
    required String entityId,
    required Map<String, dynamic> payload,
    required DateTime updatedAt,
  }) = _Draft;

  factory Draft.fromJson(Map<String, dynamic> json) => _$DraftFromJson(json);

  factory Draft.create({
    required String entityType,
    required String entityId,
    required Map<String, dynamic> payload,
  }) {
    return Draft(
      id: Uuid().v4(),
      entityType: entityType,
      entityId: entityId,
      payload: payload,
      updatedAt: DateTime.now(),
    );
  }
}
