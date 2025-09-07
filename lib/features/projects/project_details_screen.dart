import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sitecompanion/widgets/app_scaffold.dart';
import 'package:sitecompanion/widgets/loading_indicator.dart';
import 'package:sitecompanion/domain/entities/project.dart';
import 'package:get_it/get_it.dart';
import 'package:sitecompanion/data/repositories/project_repository.dart';

class ProjectDetailsScreen extends StatefulWidget {
  final String projectId;

  const ProjectDetailsScreen({super.key, required this.projectId});

  @override
  State<ProjectDetailsScreen> createState() => _ProjectDetailsScreenState();
}

class _ProjectDetailsScreenState extends State<ProjectDetailsScreen> {
  Project? _project;
  bool _isLoading = true;
  late final ProjectRepository _projectRepository;

  @override
  void initState() {
    super.initState();
    _projectRepository = GetIt.instance<ProjectRepository>();
    _loadProjectDetails();
  }

  Future<void> _loadProjectDetails() async {
    setState(() {
      _isLoading = true;
    });
    final project = await _projectRepository.getProjectById(widget.projectId);
    if (!mounted) return;
    setState(() {
      _project = project;
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: _project?.propertyName ?? 'Project Details',
      body: _isLoading
          ? const LoadingIndicator()
          : _project == null
          ? const Center(child: Text('Project not found!'))
          : SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Type: ${_project!.type}',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Address: ${_project!.propertyAddress}',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Client: ${_project!.clientName}',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Engineer: ${_project!.engineerName}',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Inspection Date: ${MaterialLocalizations.of(context).formatShortDate(_project!.inspectionDate)}',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () {
                      GoRouter.of(context).go('/projects/${_project!.id}/edit');
                    },
                    child: const Text('Edit Project'),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      GoRouter.of(
                        context,
                      ).go('/projects/${_project!.id}/observations');
                    },
                    child: const Text('View Observations'),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      // TODO: Navigate to reports screen
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Reports not yet implemented'),
                        ),
                      );
                    },
                    child: const Text('View Reports'),
                  ),
                ],
              ),
            ),
    );
  }
}
