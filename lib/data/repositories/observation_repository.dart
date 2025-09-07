import 'package:sitecompanion/domain/entities/observation.dart';

abstract class ObservationRepository {
  Future<List<Observation>> getObservationsForArea(String areaId);
  Future<Observation?> getObservationById(String id);
  Future<void> createObservation(Observation observation);
  Future<void> updateObservation(Observation observation);
  Future<void> deleteObservation(String id);
  Stream<List<Observation>> watchAllObservations();
  Stream<List<Observation>> watchObservationsForProject(String projectId);
}
