// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Project _$ProjectFromJson(Map<String, dynamic> json) {
  return _Project.fromJson(json);
}

/// @nodoc
mixin _$Project {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  DateTime get inspectionDate => throw _privateConstructorUsedError;
  String get propertyAddress => throw _privateConstructorUsedError;
  String get propertyName => throw _privateConstructorUsedError;
  String get clientName => throw _privateConstructorUsedError;
  String get engineerName => throw _privateConstructorUsedError;
  List<ProjectSection> get sections =>
      throw _privateConstructorUsedError; // Embedded for simplicity, consider separate table for large apps
  List<ObservationArea> get observedConditions =>
      throw _privateConstructorUsedError; // Embedded
  bool get isArchived => throw _privateConstructorUsedError;
  List<String> get reports => throw _privateConstructorUsedError; // file paths
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  int get version => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  /// Serializes this Project to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Project
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectCopyWith<Project> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectCopyWith<$Res> {
  factory $ProjectCopyWith(Project value, $Res Function(Project) then) =
      _$ProjectCopyWithImpl<$Res, Project>;
  @useResult
  $Res call({
    String id,
    String type,
    DateTime inspectionDate,
    String propertyAddress,
    String propertyName,
    String clientName,
    String engineerName,
    List<ProjectSection> sections,
    List<ObservationArea> observedConditions,
    bool isArchived,
    List<String> reports,
    DateTime createdAt,
    DateTime updatedAt,
    int version,
    DateTime? deletedAt,
  });
}

/// @nodoc
class _$ProjectCopyWithImpl<$Res, $Val extends Project>
    implements $ProjectCopyWith<$Res> {
  _$ProjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Project
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? inspectionDate = null,
    Object? propertyAddress = null,
    Object? propertyName = null,
    Object? clientName = null,
    Object? engineerName = null,
    Object? sections = null,
    Object? observedConditions = null,
    Object? isArchived = null,
    Object? reports = null,
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
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String,
            inspectionDate: null == inspectionDate
                ? _value.inspectionDate
                : inspectionDate // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            propertyAddress: null == propertyAddress
                ? _value.propertyAddress
                : propertyAddress // ignore: cast_nullable_to_non_nullable
                      as String,
            propertyName: null == propertyName
                ? _value.propertyName
                : propertyName // ignore: cast_nullable_to_non_nullable
                      as String,
            clientName: null == clientName
                ? _value.clientName
                : clientName // ignore: cast_nullable_to_non_nullable
                      as String,
            engineerName: null == engineerName
                ? _value.engineerName
                : engineerName // ignore: cast_nullable_to_non_nullable
                      as String,
            sections: null == sections
                ? _value.sections
                : sections // ignore: cast_nullable_to_non_nullable
                      as List<ProjectSection>,
            observedConditions: null == observedConditions
                ? _value.observedConditions
                : observedConditions // ignore: cast_nullable_to_non_nullable
                      as List<ObservationArea>,
            isArchived: null == isArchived
                ? _value.isArchived
                : isArchived // ignore: cast_nullable_to_non_nullable
                      as bool,
            reports: null == reports
                ? _value.reports
                : reports // ignore: cast_nullable_to_non_nullable
                      as List<String>,
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
abstract class _$$ProjectImplCopyWith<$Res> implements $ProjectCopyWith<$Res> {
  factory _$$ProjectImplCopyWith(
    _$ProjectImpl value,
    $Res Function(_$ProjectImpl) then,
  ) = __$$ProjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String type,
    DateTime inspectionDate,
    String propertyAddress,
    String propertyName,
    String clientName,
    String engineerName,
    List<ProjectSection> sections,
    List<ObservationArea> observedConditions,
    bool isArchived,
    List<String> reports,
    DateTime createdAt,
    DateTime updatedAt,
    int version,
    DateTime? deletedAt,
  });
}

/// @nodoc
class __$$ProjectImplCopyWithImpl<$Res>
    extends _$ProjectCopyWithImpl<$Res, _$ProjectImpl>
    implements _$$ProjectImplCopyWith<$Res> {
  __$$ProjectImplCopyWithImpl(
    _$ProjectImpl _value,
    $Res Function(_$ProjectImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Project
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? inspectionDate = null,
    Object? propertyAddress = null,
    Object? propertyName = null,
    Object? clientName = null,
    Object? engineerName = null,
    Object? sections = null,
    Object? observedConditions = null,
    Object? isArchived = null,
    Object? reports = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? version = null,
    Object? deletedAt = freezed,
  }) {
    return _then(
      _$ProjectImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String,
        inspectionDate: null == inspectionDate
            ? _value.inspectionDate
            : inspectionDate // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        propertyAddress: null == propertyAddress
            ? _value.propertyAddress
            : propertyAddress // ignore: cast_nullable_to_non_nullable
                  as String,
        propertyName: null == propertyName
            ? _value.propertyName
            : propertyName // ignore: cast_nullable_to_non_nullable
                  as String,
        clientName: null == clientName
            ? _value.clientName
            : clientName // ignore: cast_nullable_to_non_nullable
                  as String,
        engineerName: null == engineerName
            ? _value.engineerName
            : engineerName // ignore: cast_nullable_to_non_nullable
                  as String,
        sections: null == sections
            ? _value._sections
            : sections // ignore: cast_nullable_to_non_nullable
                  as List<ProjectSection>,
        observedConditions: null == observedConditions
            ? _value._observedConditions
            : observedConditions // ignore: cast_nullable_to_non_nullable
                  as List<ObservationArea>,
        isArchived: null == isArchived
            ? _value.isArchived
            : isArchived // ignore: cast_nullable_to_non_nullable
                  as bool,
        reports: null == reports
            ? _value._reports
            : reports // ignore: cast_nullable_to_non_nullable
                  as List<String>,
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
class _$ProjectImpl implements _Project {
  const _$ProjectImpl({
    required this.id,
    required this.type,
    required this.inspectionDate,
    required this.propertyAddress,
    required this.propertyName,
    required this.clientName,
    required this.engineerName,
    final List<ProjectSection> sections = const [],
    final List<ObservationArea> observedConditions = const [],
    this.isArchived = false,
    final List<String> reports = const [],
    required this.createdAt,
    required this.updatedAt,
    this.version = 1,
    this.deletedAt,
  }) : _sections = sections,
       _observedConditions = observedConditions,
       _reports = reports;

  factory _$ProjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectImplFromJson(json);

  @override
  final String id;
  @override
  final String type;
  @override
  final DateTime inspectionDate;
  @override
  final String propertyAddress;
  @override
  final String propertyName;
  @override
  final String clientName;
  @override
  final String engineerName;
  final List<ProjectSection> _sections;
  @override
  @JsonKey()
  List<ProjectSection> get sections {
    if (_sections is EqualUnmodifiableListView) return _sections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sections);
  }

  // Embedded for simplicity, consider separate table for large apps
  final List<ObservationArea> _observedConditions;
  // Embedded for simplicity, consider separate table for large apps
  @override
  @JsonKey()
  List<ObservationArea> get observedConditions {
    if (_observedConditions is EqualUnmodifiableListView)
      return _observedConditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_observedConditions);
  }

  // Embedded
  @override
  @JsonKey()
  final bool isArchived;
  final List<String> _reports;
  @override
  @JsonKey()
  List<String> get reports {
    if (_reports is EqualUnmodifiableListView) return _reports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reports);
  }

  // file paths
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
  String toString() {
    return 'Project(id: $id, type: $type, inspectionDate: $inspectionDate, propertyAddress: $propertyAddress, propertyName: $propertyName, clientName: $clientName, engineerName: $engineerName, sections: $sections, observedConditions: $observedConditions, isArchived: $isArchived, reports: $reports, createdAt: $createdAt, updatedAt: $updatedAt, version: $version, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.inspectionDate, inspectionDate) ||
                other.inspectionDate == inspectionDate) &&
            (identical(other.propertyAddress, propertyAddress) ||
                other.propertyAddress == propertyAddress) &&
            (identical(other.propertyName, propertyName) ||
                other.propertyName == propertyName) &&
            (identical(other.clientName, clientName) ||
                other.clientName == clientName) &&
            (identical(other.engineerName, engineerName) ||
                other.engineerName == engineerName) &&
            const DeepCollectionEquality().equals(other._sections, _sections) &&
            const DeepCollectionEquality().equals(
              other._observedConditions,
              _observedConditions,
            ) &&
            (identical(other.isArchived, isArchived) ||
                other.isArchived == isArchived) &&
            const DeepCollectionEquality().equals(other._reports, _reports) &&
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
    type,
    inspectionDate,
    propertyAddress,
    propertyName,
    clientName,
    engineerName,
    const DeepCollectionEquality().hash(_sections),
    const DeepCollectionEquality().hash(_observedConditions),
    isArchived,
    const DeepCollectionEquality().hash(_reports),
    createdAt,
    updatedAt,
    version,
    deletedAt,
  );

  /// Create a copy of Project
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectImplCopyWith<_$ProjectImpl> get copyWith =>
      __$$ProjectImplCopyWithImpl<_$ProjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectImplToJson(this);
  }
}

abstract class _Project implements Project {
  const factory _Project({
    required final String id,
    required final String type,
    required final DateTime inspectionDate,
    required final String propertyAddress,
    required final String propertyName,
    required final String clientName,
    required final String engineerName,
    final List<ProjectSection> sections,
    final List<ObservationArea> observedConditions,
    final bool isArchived,
    final List<String> reports,
    required final DateTime createdAt,
    required final DateTime updatedAt,
    final int version,
    final DateTime? deletedAt,
  }) = _$ProjectImpl;

  factory _Project.fromJson(Map<String, dynamic> json) = _$ProjectImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  DateTime get inspectionDate;
  @override
  String get propertyAddress;
  @override
  String get propertyName;
  @override
  String get clientName;
  @override
  String get engineerName;
  @override
  List<ProjectSection> get sections; // Embedded for simplicity, consider separate table for large apps
  @override
  List<ObservationArea> get observedConditions; // Embedded
  @override
  bool get isArchived;
  @override
  List<String> get reports; // file paths
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  int get version;
  @override
  DateTime? get deletedAt;

  /// Create a copy of Project
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectImplCopyWith<_$ProjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProjectSection _$ProjectSectionFromJson(Map<String, dynamic> json) {
  return _ProjectSection.fromJson(json);
}

/// @nodoc
mixin _$ProjectSection {
  String get id => throw _privateConstructorUsedError;
  String get projectId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  int get version => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  /// Serializes this ProjectSection to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectSection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectSectionCopyWith<ProjectSection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectSectionCopyWith<$Res> {
  factory $ProjectSectionCopyWith(
    ProjectSection value,
    $Res Function(ProjectSection) then,
  ) = _$ProjectSectionCopyWithImpl<$Res, ProjectSection>;
  @useResult
  $Res call({
    String id,
    String projectId,
    String title,
    String? content,
    DateTime createdAt,
    DateTime updatedAt,
    int version,
    DateTime? deletedAt,
  });
}

/// @nodoc
class _$ProjectSectionCopyWithImpl<$Res, $Val extends ProjectSection>
    implements $ProjectSectionCopyWith<$Res> {
  _$ProjectSectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectSection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? projectId = null,
    Object? title = null,
    Object? content = freezed,
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
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            content: freezed == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                      as String?,
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
abstract class _$$ProjectSectionImplCopyWith<$Res>
    implements $ProjectSectionCopyWith<$Res> {
  factory _$$ProjectSectionImplCopyWith(
    _$ProjectSectionImpl value,
    $Res Function(_$ProjectSectionImpl) then,
  ) = __$$ProjectSectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String projectId,
    String title,
    String? content,
    DateTime createdAt,
    DateTime updatedAt,
    int version,
    DateTime? deletedAt,
  });
}

/// @nodoc
class __$$ProjectSectionImplCopyWithImpl<$Res>
    extends _$ProjectSectionCopyWithImpl<$Res, _$ProjectSectionImpl>
    implements _$$ProjectSectionImplCopyWith<$Res> {
  __$$ProjectSectionImplCopyWithImpl(
    _$ProjectSectionImpl _value,
    $Res Function(_$ProjectSectionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProjectSection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? projectId = null,
    Object? title = null,
    Object? content = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? version = null,
    Object? deletedAt = freezed,
  }) {
    return _then(
      _$ProjectSectionImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        projectId: null == projectId
            ? _value.projectId
            : projectId // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        content: freezed == content
            ? _value.content
            : content // ignore: cast_nullable_to_non_nullable
                  as String?,
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
class _$ProjectSectionImpl implements _ProjectSection {
  const _$ProjectSectionImpl({
    required this.id,
    required this.projectId,
    required this.title,
    this.content,
    required this.createdAt,
    required this.updatedAt,
    this.version = 1,
    this.deletedAt,
  });

  factory _$ProjectSectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectSectionImplFromJson(json);

  @override
  final String id;
  @override
  final String projectId;
  @override
  final String title;
  @override
  final String? content;
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
  String toString() {
    return 'ProjectSection(id: $id, projectId: $projectId, title: $title, content: $content, createdAt: $createdAt, updatedAt: $updatedAt, version: $version, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectSectionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
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
    title,
    content,
    createdAt,
    updatedAt,
    version,
    deletedAt,
  );

  /// Create a copy of ProjectSection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectSectionImplCopyWith<_$ProjectSectionImpl> get copyWith =>
      __$$ProjectSectionImplCopyWithImpl<_$ProjectSectionImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectSectionImplToJson(this);
  }
}

abstract class _ProjectSection implements ProjectSection {
  const factory _ProjectSection({
    required final String id,
    required final String projectId,
    required final String title,
    final String? content,
    required final DateTime createdAt,
    required final DateTime updatedAt,
    final int version,
    final DateTime? deletedAt,
  }) = _$ProjectSectionImpl;

  factory _ProjectSection.fromJson(Map<String, dynamic> json) =
      _$ProjectSectionImpl.fromJson;

  @override
  String get id;
  @override
  String get projectId;
  @override
  String get title;
  @override
  String? get content;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  int get version;
  @override
  DateTime? get deletedAt;

  /// Create a copy of ProjectSection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectSectionImplCopyWith<_$ProjectSectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ObservationArea _$ObservationAreaFromJson(Map<String, dynamic> json) {
  return _ObservationArea.fromJson(json);
}

/// @nodoc
mixin _$ObservationArea {
  String get id => throw _privateConstructorUsedError;
  String get projectId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<Observation> get observations =>
      throw _privateConstructorUsedError; // Embedded
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  int get version => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  /// Serializes this ObservationArea to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ObservationArea
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ObservationAreaCopyWith<ObservationArea> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObservationAreaCopyWith<$Res> {
  factory $ObservationAreaCopyWith(
    ObservationArea value,
    $Res Function(ObservationArea) then,
  ) = _$ObservationAreaCopyWithImpl<$Res, ObservationArea>;
  @useResult
  $Res call({
    String id,
    String projectId,
    String name,
    List<Observation> observations,
    DateTime createdAt,
    DateTime updatedAt,
    int version,
    DateTime? deletedAt,
  });
}

/// @nodoc
class _$ObservationAreaCopyWithImpl<$Res, $Val extends ObservationArea>
    implements $ObservationAreaCopyWith<$Res> {
  _$ObservationAreaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ObservationArea
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? projectId = null,
    Object? name = null,
    Object? observations = null,
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
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            observations: null == observations
                ? _value.observations
                : observations // ignore: cast_nullable_to_non_nullable
                      as List<Observation>,
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
abstract class _$$ObservationAreaImplCopyWith<$Res>
    implements $ObservationAreaCopyWith<$Res> {
  factory _$$ObservationAreaImplCopyWith(
    _$ObservationAreaImpl value,
    $Res Function(_$ObservationAreaImpl) then,
  ) = __$$ObservationAreaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String projectId,
    String name,
    List<Observation> observations,
    DateTime createdAt,
    DateTime updatedAt,
    int version,
    DateTime? deletedAt,
  });
}

/// @nodoc
class __$$ObservationAreaImplCopyWithImpl<$Res>
    extends _$ObservationAreaCopyWithImpl<$Res, _$ObservationAreaImpl>
    implements _$$ObservationAreaImplCopyWith<$Res> {
  __$$ObservationAreaImplCopyWithImpl(
    _$ObservationAreaImpl _value,
    $Res Function(_$ObservationAreaImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ObservationArea
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? projectId = null,
    Object? name = null,
    Object? observations = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? version = null,
    Object? deletedAt = freezed,
  }) {
    return _then(
      _$ObservationAreaImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        projectId: null == projectId
            ? _value.projectId
            : projectId // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        observations: null == observations
            ? _value._observations
            : observations // ignore: cast_nullable_to_non_nullable
                  as List<Observation>,
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
class _$ObservationAreaImpl implements _ObservationArea {
  const _$ObservationAreaImpl({
    required this.id,
    required this.projectId,
    required this.name,
    final List<Observation> observations = const [],
    required this.createdAt,
    required this.updatedAt,
    this.version = 1,
    this.deletedAt,
  }) : _observations = observations;

  factory _$ObservationAreaImpl.fromJson(Map<String, dynamic> json) =>
      _$$ObservationAreaImplFromJson(json);

  @override
  final String id;
  @override
  final String projectId;
  @override
  final String name;
  final List<Observation> _observations;
  @override
  @JsonKey()
  List<Observation> get observations {
    if (_observations is EqualUnmodifiableListView) return _observations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_observations);
  }

  // Embedded
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
  String toString() {
    return 'ObservationArea(id: $id, projectId: $projectId, name: $name, observations: $observations, createdAt: $createdAt, updatedAt: $updatedAt, version: $version, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ObservationAreaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(
              other._observations,
              _observations,
            ) &&
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
    name,
    const DeepCollectionEquality().hash(_observations),
    createdAt,
    updatedAt,
    version,
    deletedAt,
  );

  /// Create a copy of ObservationArea
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ObservationAreaImplCopyWith<_$ObservationAreaImpl> get copyWith =>
      __$$ObservationAreaImplCopyWithImpl<_$ObservationAreaImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ObservationAreaImplToJson(this);
  }
}

abstract class _ObservationArea implements ObservationArea {
  const factory _ObservationArea({
    required final String id,
    required final String projectId,
    required final String name,
    final List<Observation> observations,
    required final DateTime createdAt,
    required final DateTime updatedAt,
    final int version,
    final DateTime? deletedAt,
  }) = _$ObservationAreaImpl;

  factory _ObservationArea.fromJson(Map<String, dynamic> json) =
      _$ObservationAreaImpl.fromJson;

  @override
  String get id;
  @override
  String get projectId;
  @override
  String get name;
  @override
  List<Observation> get observations; // Embedded
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  int get version;
  @override
  DateTime? get deletedAt;

  /// Create a copy of ObservationArea
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ObservationAreaImplCopyWith<_$ObservationAreaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Observation _$ObservationFromJson(Map<String, dynamic> json) {
  return _Observation.fromJson(json);
}

/// @nodoc
mixin _$Observation {
  String get id => throw _privateConstructorUsedError;
  String get areaId => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  String? get photoPath => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;
  double? get severity => throw _privateConstructorUsedError;
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
    String areaId,
    String? note,
    String? photoPath,
    List<String>? tags,
    double? severity,
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
    Object? areaId = null,
    Object? note = freezed,
    Object? photoPath = freezed,
    Object? tags = freezed,
    Object? severity = freezed,
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
            areaId: null == areaId
                ? _value.areaId
                : areaId // ignore: cast_nullable_to_non_nullable
                      as String,
            note: freezed == note
                ? _value.note
                : note // ignore: cast_nullable_to_non_nullable
                      as String?,
            photoPath: freezed == photoPath
                ? _value.photoPath
                : photoPath // ignore: cast_nullable_to_non_nullable
                      as String?,
            tags: freezed == tags
                ? _value.tags
                : tags // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            severity: freezed == severity
                ? _value.severity
                : severity // ignore: cast_nullable_to_non_nullable
                      as double?,
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
    String areaId,
    String? note,
    String? photoPath,
    List<String>? tags,
    double? severity,
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
    Object? areaId = null,
    Object? note = freezed,
    Object? photoPath = freezed,
    Object? tags = freezed,
    Object? severity = freezed,
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
        areaId: null == areaId
            ? _value.areaId
            : areaId // ignore: cast_nullable_to_non_nullable
                  as String,
        note: freezed == note
            ? _value.note
            : note // ignore: cast_nullable_to_non_nullable
                  as String?,
        photoPath: freezed == photoPath
            ? _value.photoPath
            : photoPath // ignore: cast_nullable_to_non_nullable
                  as String?,
        tags: freezed == tags
            ? _value._tags
            : tags // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        severity: freezed == severity
            ? _value.severity
            : severity // ignore: cast_nullable_to_non_nullable
                  as double?,
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
class _$ObservationImpl implements _Observation {
  const _$ObservationImpl({
    required this.id,
    required this.areaId,
    this.note,
    this.photoPath,
    final List<String>? tags,
    this.severity,
    this.isAnnotated = false,
    required this.createdAt,
    required this.updatedAt,
    this.version = 1,
    this.deletedAt,
  }) : _tags = tags;

  factory _$ObservationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ObservationImplFromJson(json);

  @override
  final String id;
  @override
  final String areaId;
  @override
  final String? note;
  @override
  final String? photoPath;
  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final double? severity;
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
  String toString() {
    return 'Observation(id: $id, areaId: $areaId, note: $note, photoPath: $photoPath, tags: $tags, severity: $severity, isAnnotated: $isAnnotated, createdAt: $createdAt, updatedAt: $updatedAt, version: $version, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ObservationImpl &&
            (identical(other.id, id) || other.id == id) &&
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
    required final String id,
    required final String areaId,
    final String? note,
    final String? photoPath,
    final List<String>? tags,
    final double? severity,
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
  String get areaId;
  @override
  String? get note;
  @override
  String? get photoPath;
  @override
  List<String>? get tags;
  @override
  double? get severity;
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

Draft _$DraftFromJson(Map<String, dynamic> json) {
  return _Draft.fromJson(json);
}

/// @nodoc
mixin _$Draft {
  String get id => throw _privateConstructorUsedError;
  String get entityType => throw _privateConstructorUsedError;
  String get entityId => throw _privateConstructorUsedError;
  Map<String, dynamic> get payload => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Draft to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Draft
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DraftCopyWith<Draft> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DraftCopyWith<$Res> {
  factory $DraftCopyWith(Draft value, $Res Function(Draft) then) =
      _$DraftCopyWithImpl<$Res, Draft>;
  @useResult
  $Res call({
    String id,
    String entityType,
    String entityId,
    Map<String, dynamic> payload,
    DateTime updatedAt,
  });
}

/// @nodoc
class _$DraftCopyWithImpl<$Res, $Val extends Draft>
    implements $DraftCopyWith<$Res> {
  _$DraftCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Draft
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? entityType = null,
    Object? entityId = null,
    Object? payload = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            entityType: null == entityType
                ? _value.entityType
                : entityType // ignore: cast_nullable_to_non_nullable
                      as String,
            entityId: null == entityId
                ? _value.entityId
                : entityId // ignore: cast_nullable_to_non_nullable
                      as String,
            payload: null == payload
                ? _value.payload
                : payload // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
            updatedAt: null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DraftImplCopyWith<$Res> implements $DraftCopyWith<$Res> {
  factory _$$DraftImplCopyWith(
    _$DraftImpl value,
    $Res Function(_$DraftImpl) then,
  ) = __$$DraftImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String entityType,
    String entityId,
    Map<String, dynamic> payload,
    DateTime updatedAt,
  });
}

/// @nodoc
class __$$DraftImplCopyWithImpl<$Res>
    extends _$DraftCopyWithImpl<$Res, _$DraftImpl>
    implements _$$DraftImplCopyWith<$Res> {
  __$$DraftImplCopyWithImpl(
    _$DraftImpl _value,
    $Res Function(_$DraftImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Draft
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? entityType = null,
    Object? entityId = null,
    Object? payload = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _$DraftImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        entityType: null == entityType
            ? _value.entityType
            : entityType // ignore: cast_nullable_to_non_nullable
                  as String,
        entityId: null == entityId
            ? _value.entityId
            : entityId // ignore: cast_nullable_to_non_nullable
                  as String,
        payload: null == payload
            ? _value._payload
            : payload // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
        updatedAt: null == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DraftImpl implements _Draft {
  const _$DraftImpl({
    required this.id,
    required this.entityType,
    required this.entityId,
    required final Map<String, dynamic> payload,
    required this.updatedAt,
  }) : _payload = payload;

  factory _$DraftImpl.fromJson(Map<String, dynamic> json) =>
      _$$DraftImplFromJson(json);

  @override
  final String id;
  @override
  final String entityType;
  @override
  final String entityId;
  final Map<String, dynamic> _payload;
  @override
  Map<String, dynamic> get payload {
    if (_payload is EqualUnmodifiableMapView) return _payload;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_payload);
  }

  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Draft(id: $id, entityType: $entityType, entityId: $entityId, payload: $payload, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DraftImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.entityType, entityType) ||
                other.entityType == entityType) &&
            (identical(other.entityId, entityId) ||
                other.entityId == entityId) &&
            const DeepCollectionEquality().equals(other._payload, _payload) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    entityType,
    entityId,
    const DeepCollectionEquality().hash(_payload),
    updatedAt,
  );

  /// Create a copy of Draft
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DraftImplCopyWith<_$DraftImpl> get copyWith =>
      __$$DraftImplCopyWithImpl<_$DraftImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DraftImplToJson(this);
  }
}

abstract class _Draft implements Draft {
  const factory _Draft({
    required final String id,
    required final String entityType,
    required final String entityId,
    required final Map<String, dynamic> payload,
    required final DateTime updatedAt,
  }) = _$DraftImpl;

  factory _Draft.fromJson(Map<String, dynamic> json) = _$DraftImpl.fromJson;

  @override
  String get id;
  @override
  String get entityType;
  @override
  String get entityId;
  @override
  Map<String, dynamic> get payload;
  @override
  DateTime get updatedAt;

  /// Create a copy of Draft
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DraftImplCopyWith<_$DraftImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
