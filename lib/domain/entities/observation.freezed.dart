// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'observation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Observation _$ObservationFromJson(Map<String, dynamic> json) {
  return _Observation.fromJson(json);
}

/// @nodoc
mixin _$Observation {
  String get id => throw _privateConstructorUsedError;
  String get projectId => throw _privateConstructorUsedError; // Add projectId
  String? get areaId => throw _privateConstructorUsedError; // Made nullable
  String? get note => throw _privateConstructorUsedError;
  String? get photoPath => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  double get severity =>
      throw _privateConstructorUsedError; // e.g., 1.0 (low) to 5.0 (high)
  bool get isAnnotated => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  int get version => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  /// Serializes this Observation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Observation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ObservationCopyWith<Observation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObservationCopyWith<$Res> {
  factory $ObservationCopyWith(
    Observation value,
    $Res Function(Observation) then,
  ) = _$ObservationCopyWithImpl<$Res, Observation>;
  @useResult
  $Res call({
    String id,
    String projectId,
    String? areaId,
    String? note,
    String? photoPath,
    List<String> tags,
    double severity,
    bool isAnnotated,
    DateTime createdAt,
    DateTime updatedAt,
    int version,
    DateTime? deletedAt,
  });
}

/// @nodoc
class _$ObservationCopyWithImpl<$Res, $Val extends Observation>
    implements $ObservationCopyWith<$Res> {
  _$ObservationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Observation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? projectId = null,
    Object? areaId = freezed,
    Object? note = freezed,
    Object? photoPath = freezed,
    Object? tags = null,
    Object? severity = null,
    Object? isAnnotated = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? version = null,
    Object? deletedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            projectId: null == projectId
                ? _value.projectId
                : projectId // ignore: cast_nullable_to_non_nullable
                      as String,
            areaId: freezed == areaId
                ? _value.areaId
                : areaId // ignore: cast_nullable_to_non_nullable
                      as String?,
            note: freezed == note
                ? _value.note
                : note // ignore: cast_nullable_to_non_nullable
                      as String?,
            photoPath: freezed == photoPath
                ? _value.photoPath
                : photoPath // ignore: cast_nullable_to_non_nullable
                      as String?,
            tags: null == tags
                ? _value.tags
                : tags // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            severity: null == severity
                ? _value.severity
                : severity // ignore: cast_nullable_to_non_nullable
                      as double,
            isAnnotated: null == isAnnotated
                ? _value.isAnnotated
                : isAnnotated // ignore: cast_nullable_to_non_nullable
                      as bool,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            updatedAt: null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            version: null == version
                ? _value.version
                : version // ignore: cast_nullable_to_non_nullable
                      as int,
            deletedAt: freezed == deletedAt
                ? _value.deletedAt
                : deletedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ObservationImplCopyWith<$Res>
    implements $ObservationCopyWith<$Res> {
  factory _$$ObservationImplCopyWith(
    _$ObservationImpl value,
    $Res Function(_$ObservationImpl) then,
  ) = __$$ObservationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String projectId,
    String? areaId,
    String? note,
    String? photoPath,
    List<String> tags,
    double severity,
    bool isAnnotated,
    DateTime createdAt,
    DateTime updatedAt,
    int version,
    DateTime? deletedAt,
  });
}

/// @nodoc
class __$$ObservationImplCopyWithImpl<$Res>
    extends _$ObservationCopyWithImpl<$Res, _$ObservationImpl>
    implements _$$ObservationImplCopyWith<$Res> {
  __$$ObservationImplCopyWithImpl(
    _$ObservationImpl _value,
    $Res Function(_$ObservationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Observation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? projectId = null,
    Object? areaId = freezed,
    Object? note = freezed,
    Object? photoPath = freezed,
    Object? tags = null,
    Object? severity = null,
    Object? isAnnotated = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? version = null,
    Object? deletedAt = freezed,
  }) {
    return _then(
      _$ObservationImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        projectId: null == projectId
            ? _value.projectId
            : projectId // ignore: cast_nullable_to_non_nullable
                  as String,
        areaId: freezed == areaId
            ? _value.areaId
            : areaId // ignore: cast_nullable_to_non_nullable
                  as String?,
        note: freezed == note
            ? _value.note
            : note // ignore: cast_nullable_to_non_nullable
                  as String?,
        photoPath: freezed == photoPath
            ? _value.photoPath
            : photoPath // ignore: cast_nullable_to_non_nullable
                  as String?,
        tags: null == tags
            ? _value._tags
            : tags // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        severity: null == severity
            ? _value.severity
            : severity // ignore: cast_nullable_to_non_nullable
                  as double,
        isAnnotated: null == isAnnotated
            ? _value.isAnnotated
            : isAnnotated // ignore: cast_nullable_to_non_nullable
                  as bool,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        updatedAt: null == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        version: null == version
            ? _value.version
            : version // ignore: cast_nullable_to_non_nullable
                  as int,
        deletedAt: freezed == deletedAt
            ? _value.deletedAt
            : deletedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ObservationImpl with DiagnosticableTreeMixin implements _Observation {
  const _$ObservationImpl({
    this.id = '',
    required this.projectId,
    this.areaId,
    this.note,
    this.photoPath,
    final List<String> tags = const [],
    this.severity = 1.0,
    this.isAnnotated = false,
    required this.createdAt,
    required this.updatedAt,
    this.version = 1,
    this.deletedAt,
  }) : _tags = tags;

  factory _$ObservationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ObservationImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  final String projectId;
  // Add projectId
  @override
  final String? areaId;
  // Made nullable
  @override
  final String? note;
  @override
  final String? photoPath;
  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  @JsonKey()
  final double severity;
  // e.g., 1.0 (low) to 5.0 (high)
  @override
  @JsonKey()
  final bool isAnnotated;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  @JsonKey()
  final int version;
  @override
  final DateTime? deletedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Observation(id: $id, projectId: $projectId, areaId: $areaId, note: $note, photoPath: $photoPath, tags: $tags, severity: $severity, isAnnotated: $isAnnotated, createdAt: $createdAt, updatedAt: $updatedAt, version: $version, deletedAt: $deletedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Observation'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('projectId', projectId))
      ..add(DiagnosticsProperty('areaId', areaId))
      ..add(DiagnosticsProperty('note', note))
      ..add(DiagnosticsProperty('photoPath', photoPath))
      ..add(DiagnosticsProperty('tags', tags))
      ..add(DiagnosticsProperty('severity', severity))
      ..add(DiagnosticsProperty('isAnnotated', isAnnotated))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('version', version))
      ..add(DiagnosticsProperty('deletedAt', deletedAt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ObservationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.areaId, areaId) || other.areaId == areaId) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.photoPath, photoPath) ||
                other.photoPath == photoPath) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.severity, severity) ||
                other.severity == severity) &&
            (identical(other.isAnnotated, isAnnotated) ||
                other.isAnnotated == isAnnotated) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    projectId,
    areaId,
    note,
    photoPath,
    const DeepCollectionEquality().hash(_tags),
    severity,
    isAnnotated,
    createdAt,
    updatedAt,
    version,
    deletedAt,
  );

  /// Create a copy of Observation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ObservationImplCopyWith<_$ObservationImpl> get copyWith =>
      __$$ObservationImplCopyWithImpl<_$ObservationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ObservationImplToJson(this);
  }
}

abstract class _Observation implements Observation {
  const factory _Observation({
    final String id,
    required final String projectId,
    final String? areaId,
    final String? note,
    final String? photoPath,
    final List<String> tags,
    final double severity,
    final bool isAnnotated,
    required final DateTime createdAt,
    required final DateTime updatedAt,
    final int version,
    final DateTime? deletedAt,
  }) = _$ObservationImpl;

  factory _Observation.fromJson(Map<String, dynamic> json) =
      _$ObservationImpl.fromJson;

  @override
  String get id;
  @override
  String get projectId; // Add projectId
  @override
  String? get areaId; // Made nullable
  @override
  String? get note;
  @override
  String? get photoPath;
  @override
  List<String> get tags;
  @override
  double get severity; // e.g., 1.0 (low) to 5.0 (high)
  @override
  bool get isAnnotated;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  int get version;
  @override
  DateTime? get deletedAt;

  /// Create a copy of Observation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ObservationImplCopyWith<_$ObservationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
