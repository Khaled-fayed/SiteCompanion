import 'package:flutter/material.dart';
import 'package:sitecompanion/domain/entities/observation.dart';
import 'package:go_router/go_router.dart';
import 'package:sitecompanion/domain/entities/project.dart'
    as project_entity; // Assuming Project entity is needed for Project Name

class ObservationViewerScreen extends StatelessWidget {
  final Observation observation;
  final project_entity.Project
  project; // Assuming we need project details for project name

  const ObservationViewerScreen({
    Key? key,
    required this.observation,
    required this.project,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Observation Details'),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              GoRouter.of(context).go(
                '/projects/${project.id}/observations/${observation.id}/edit',
                extra: observation,
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              margin: const EdgeInsets.only(bottom: 16.0),
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Project: ${project.propertyName}',
                      style: Theme.of(context).textTheme.headlineSmall
                          ?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).primaryColor,
                          ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      'Date: ${observation.createdAt.toLocal().toString().split(' ')[0]}',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      'By: ${project.engineerName}',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
            ),
            Text(
              'Note:',
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Card(
              margin: const EdgeInsets.only(bottom: 24.0),
              elevation: 2.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  observation.note ?? 'No note provided.',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ),
            Text(
              'Photos:',
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Card(
              elevation: 2.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              clipBehavior: Clip.antiAlias,
              child:
                  observation.photoPath != null &&
                      observation.photoPath!.isNotEmpty
                  ? Image.network(
                      observation.photoPath!,
                      fit: BoxFit.cover,
                      height: 250,
                      width: double.infinity,
                      loadingBuilder:
                          (
                            BuildContext context,
                            Widget child,
                            ImageChunkEvent? loadingProgress,
                          ) {
                            if (loadingProgress == null) return child;
                            return Container(
                              height: 250,
                              color: Colors.grey[200],
                              alignment: Alignment.center,
                              child: CircularProgressIndicator(
                                value:
                                    loadingProgress.expectedTotalBytes != null
                                    ? loadingProgress.cumulativeBytesLoaded /
                                          loadingProgress.expectedTotalBytes!
                                    : null,
                              ),
                            );
                          },
                      errorBuilder: (context, error, stackTrace) => Container(
                        height: 250,
                        color: Colors.grey[300],
                        alignment: Alignment.center,
                        child: const Text('Failed to load photo'),
                      ),
                    )
                  : Container(
                      height: 200,
                      color: Colors.grey[300],
                      alignment: Alignment.center,
                      child: const Text('No photos available'),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
