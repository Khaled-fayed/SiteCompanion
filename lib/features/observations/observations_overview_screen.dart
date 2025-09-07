import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sitecompanion/widgets/app_scaffold.dart';
import 'package:sitecompanion/widgets/empty_state_widget.dart';
import 'package:sitecompanion/widgets/loading_indicator.dart';
import 'package:sitecompanion/widgets/observation_card.dart';
import 'package:sitecompanion/data/repositories/observation_repository.dart';
import 'package:sitecompanion/domain/entities/observation.dart';
import 'package:get_it/get_it.dart';

class ObservationsOverviewScreen extends StatefulWidget {
  final String? projectId;

  const ObservationsOverviewScreen({super.key, this.projectId});

  @override
  State<ObservationsOverviewScreen> createState() =>
      _ObservationsOverviewScreenState();
}

class _ObservationsOverviewScreenState
    extends State<ObservationsOverviewScreen> {
  final ObservationRepository _observationRepository =
      GetIt.I<ObservationRepository>();
  late Stream<List<Observation>> _observationsStream;

  @override
  void initState() {
    super.initState();
    if (widget.projectId != null) {
      _observationsStream = _observationRepository.watchObservationsForProject(
        widget.projectId!,
      );
    } else {
      _observationsStream = _observationRepository.watchAllObservations();
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Observations',
      body: StreamBuilder<List<Observation>>(
        stream: _observationsStream,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const LoadingIndicator();
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const EmptyStateWidget(
              message: 'No observations yet. Start by adding a new one!',
            );
          } else {
            final observations = snapshot.data!;
            return ListView.builder(
              itemCount: observations.length,
              itemBuilder: (context, index) {
                final observation = observations[index];
                return ObservationCard(
                  observation: observation,
                  onTap: () {
                    context.go(
                      '/projects/${observation.projectId}/observations/${observation.id}',
                      extra: observation,
                    );
                  },
                  onEdit: () {
                    context.go(
                      '/projects/${observation.projectId}/observations/${observation.id}/edit',
                      extra: observation,
                    );
                  },
                  onDelete: () async {
                    await _observationRepository.deleteObservation(
                      observation.id,
                    );
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Observation "${observation.note}" deleted.',
                        ),
                      ),
                    );
                  },
                );
              },
            );
          }
        },
      ),
      floatingActionButton: widget.projectId != null
          ? FloatingActionButton(
              onPressed: () {
                context.go(
                  '/projects/${widget.projectId}/observations/new',
                  extra:
                      null, // areaId is nullable, so pass null for new observation
                );
              },
              child: const Icon(Icons.add),
            )
          : null,
    );
  }
}
