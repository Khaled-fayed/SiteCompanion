import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:uuid/uuid.dart'; // Import uuid package

part 'observation.freezed.dart';
part 'observation.g.dart';

@freezed
class Observation with _$Observation {
  const factory Observation({
    @Default('') String id,
    required String projectId, // Add projectId
    String? areaId, // Made nullable
    String? note,
    String? photoPath,
    @Default([]) List<String> tags,
    @Default(1.0) double severity, // e.g., 1.0 (low) to 5.0 (high)
    @Default(false) bool isAnnotated,
    required DateTime createdAt,
    required DateTime updatedAt,
    @Default(1) int version,
    DateTime? deletedAt,
  }) = _Observation;

  factory Observation.fromJson(Map<String, dynamic> json) =>
      _$ObservationFromJson(json);

  factory Observation.create({
    required String projectId, // Make projectId required for creation
    String? areaId, // Made nullable
    String? note,
    String? photoPath,
    List<String>? tags,
    double? severity,
    bool? isAnnotated,
  }) {
    final now = DateTime.now();
    final uuid = Uuid(); // Initialize Uuid
    return Observation(
      id: uuid.v4(), // Generate a unique ID for new observations using UUID
      projectId: projectId,
      areaId: areaId ?? uuid.v4(), // Generate UUID if areaId is null
      note: note,
      photoPath: photoPath,
      tags: tags ?? [],
      severity: severity ?? 1.0,
      isAnnotated: isAnnotated ?? false,
      createdAt: now,
      updatedAt: now,
      version: 1,
      deletedAt: null,
    );
  }
}
