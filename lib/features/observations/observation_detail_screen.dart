import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sitecompanion/domain/entities/observation.dart' as obs_entity;
import 'package:sitecompanion/domain/entities/project.dart' as proj_entity;
import 'package:sitecompanion/data/repositories/project_repository.dart';
import 'package:sitecompanion/widgets/app_scaffold.dart';
import 'package:sitecompanion/widgets/loading_indicator.dart';
import 'package:get_it/get_it.dart';

class ObservationDetailScreen extends StatelessWidget {
  final obs_entity.Observation observation;
  final String projectId;

  const ObservationDetailScreen({
    super.key,
    required this.observation,
    required this.projectId,
  });

  @override
  Widget build(BuildContext context) {
    final ProjectRepository projectRepository = GetIt.I<ProjectRepository>();

    return AppScaffold(
      title: 'Observation Details',
      body: FutureBuilder<proj_entity.Project?>(
        future: projectRepository.getProjectById(projectId),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const LoadingIndicator();
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData) {
            return const Center(child: Text('Project not found.'));
          }

          final project = snapshot.data!;
          return SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  project.propertyName,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                Text(
                  'Created: ${MaterialLocalizations.of(context).formatShortDate(observation.createdAt)}',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 16),
                if (observation.tags != null && observation.tags!.isNotEmpty)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tags:',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Wrap(
                        spacing: 8.0,
                        runSpacing: 4.0,
                        children: observation.tags!
                            .map((tag) => Chip(label: Text(tag)))
                            .toList(),
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                Text('Note:', style: Theme.of(context).textTheme.titleMedium),
                Text(
                  observation.note ?? 'No note provided',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                if (observation.photoPath != null) ...[
                  const SizedBox(height: 16),
                  Text(
                    'Image:',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  // TODO: Display the actual image from photoPath
                  Center(
                    child: Icon(
                      Icons.image,
                      size: 100,
                      color: Colors.grey[400],
                    ),
                  ),
                ],
                const SizedBox(height: 24),
                Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {
                      context.pop(); // Go back to the previous screen
                    },
                    child: const Text('Back'),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
