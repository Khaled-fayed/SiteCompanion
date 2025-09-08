import 'package:flutter/material.dart';
import 'package:sitecompanion/domain/entities/observation.dart'; // For Observation entity

class ObservationCard extends StatelessWidget {
  final Observation observation;
  final String projectName; // Add project name
  final VoidCallback onTap;
  final VoidCallback onDelete;
  final VoidCallback onView;

  const ObservationCard({
    super.key,
    required this.observation,
    required this.projectName, // Require project name
    required this.onTap,
    required this.onDelete,
    required this.onView,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                projectName, // Display project name
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                observation.note ?? 'No note provided',
                style: Theme.of(context).textTheme.titleMedium,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              if (observation.photoPath != null) ...[
                const SizedBox(height: 8),
                // TODO: Display thumbnail of the photo
                const Icon(Icons.image, size: 40),
              ],
              const SizedBox(height: 8),
              Text(
                'Created: ${MaterialLocalizations.of(context).formatShortDate(observation.createdAt)}',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.visibility),
                      onPressed: onView,
                    ),
                    IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: onDelete,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
