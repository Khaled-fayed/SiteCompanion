// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectImpl _$$ProjectImplFromJson(Map<String, dynamic> json) =>
    _$ProjectImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      inspectionDate: DateTime.parse(json['inspectionDate'] as String),
      propertyAddress: json['propertyAddress'] as String,
      propertyName: json['propertyName'] as String,
      clientName: json['clientName'] as String,
      engineerName: json['engineerName'] as String,
      sections:
          (json['sections'] as List<dynamic>?)
              ?.map((e) => ProjectSection.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      observedConditions:
          (json['observedConditions'] as List<dynamic>?)
              ?.map((e) => ObservationArea.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isArchived: json['isArchived'] as bool? ?? false,
      reports:
          (json['reports'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      version: (json['version'] as num?)?.toInt() ?? 1,
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
    );

Map<String, dynamic> _$$ProjectImplToJson(_$ProjectImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'inspectionDate': instance.inspectionDate.toIso8601String(),
      'propertyAddress': instance.propertyAddress,
      'propertyName': instance.propertyName,
      'clientName': instance.clientName,
      'engineerName': instance.engineerName,
      'sections': instance.sections,
      'observedConditions': instance.observedConditions,
      'isArchived': instance.isArchived,
      'reports': instance.reports,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'version': instance.version,
      'deletedAt': instance.deletedAt?.toIso8601String(),
    };

_$ProjectSectionImpl _$$ProjectSectionImplFromJson(Map<String, dynamic> json) =>
    _$ProjectSectionImpl(
      id: json['id'] as String,
      projectId: json['projectId'] as String,
      title: json['title'] as String,
      content: json['content'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      version: (json['version'] as num?)?.toInt() ?? 1,
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
    );

Map<String, dynamic> _$$ProjectSectionImplToJson(
  _$ProjectSectionImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'projectId': instance.projectId,
  'title': instance.title,
  'content': instance.content,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'version': instance.version,
  'deletedAt': instance.deletedAt?.toIso8601String(),
};

_$ObservationAreaImpl _$$ObservationAreaImplFromJson(
  Map<String, dynamic> json,
) => _$ObservationAreaImpl(
  id: json['id'] as String,
  projectId: json['projectId'] as String,
  name: json['name'] as String,
  observations:
      (json['observations'] as List<dynamic>?)
          ?.map((e) => Observation.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  version: (json['version'] as num?)?.toInt() ?? 1,
  deletedAt: json['deletedAt'] == null
      ? null
      : DateTime.parse(json['deletedAt'] as String),
);

Map<String, dynamic> _$$ObservationAreaImplToJson(
  _$ObservationAreaImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'projectId': instance.projectId,
  'name': instance.name,
  'observations': instance.observations,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'version': instance.version,
  'deletedAt': instance.deletedAt?.toIso8601String(),
};

_$ObservationImpl _$$ObservationImplFromJson(Map<String, dynamic> json) =>
    _$ObservationImpl(
      id: json['id'] as String,
      areaId: json['areaId'] as String,
      note: json['note'] as String?,
      photoPath: json['photoPath'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      severity: (json['severity'] as num?)?.toDouble(),
      isAnnotated: json['isAnnotated'] as bool? ?? false,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      version: (json['version'] as num?)?.toInt() ?? 1,
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
    );

Map<String, dynamic> _$$ObservationImplToJson(_$ObservationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'areaId': instance.areaId,
      'note': instance.note,
      'photoPath': instance.photoPath,
      'tags': instance.tags,
      'severity': instance.severity,
      'isAnnotated': instance.isAnnotated,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'version': instance.version,
      'deletedAt': instance.deletedAt?.toIso8601String(),
    };

_$DraftImpl _$$DraftImplFromJson(Map<String, dynamic> json) => _$DraftImpl(
  id: json['id'] as String,
  entityType: json['entityType'] as String,
  entityId: json['entityId'] as String,
  payload: json['payload'] as Map<String, dynamic>,
  updatedAt: DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$$DraftImplToJson(_$DraftImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'entityType': instance.entityType,
      'entityId': instance.entityId,
      'payload': instance.payload,
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
