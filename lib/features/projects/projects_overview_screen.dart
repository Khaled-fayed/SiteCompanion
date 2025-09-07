import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sitecompanion/widgets/app_scaffold.dart';
import 'package:sitecompanion/widgets/empty_state_widget.dart';
import 'package:sitecompanion/widgets/loading_indicator.dart';
import 'package:sitecompanion/widgets/project_card.dart';
import 'package:sitecompanion/domain/entities/project.dart';
import 'package:get_it/get_it.dart';
import 'package:sitecompanion/data/repositories/project_repository.dart';

class ProjectsOverviewScreen extends StatefulWidget {
  const ProjectsOverviewScreen({super.key});

  @override
  State<ProjectsOverviewScreen> createState() => _ProjectsOverviewScreenState();
}

class _ProjectsOverviewScreenState extends State<ProjectsOverviewScreen> {
  List<Project> _projects = [];
  bool _isLoading = true;
  late final ProjectRepository _projectRepository;

  @override
  void initState() {
    super.initState();
    _projectRepository = GetIt.instance<ProjectRepository>();
    _loadProjects();
  }

  Future<void> _loadProjects() async {
    setState(() {
      _isLoading = true;
    });
    final projects = await _projectRepository.getAllProjects();
    if (!mounted) return;
    setState(() {
      _projects = projects;
      _isLoading = false;
    });
  }

  Future<void> _refreshProjects() async {
    await _loadProjects();
  }

  void _archiveProject(Project project) async {
    if (project.isArchived) {
      await _projectRepository.unarchiveProject(project.id);
    } else {
      await _projectRepository.archiveProject(project.id);
    }
    await _refreshProjects();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Project "${project.propertyName}" ${project.isArchived ? 'unarchived' : 'archived'}',
        ),
      ),
    );
  }

  void _deleteProject(Project project) async {
    await _projectRepository.deleteProject(project.id);
    await _refreshProjects();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Project "${project.propertyName}" deleted')),
    );
  }

  void _navigateToProjectDetails(String projectId) {
    GoRouter.of(context).go('/projects/$projectId');
  }

  void _navigateToCreateProject() {
    GoRouter.of(context).go('/projects/new');
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Projects',
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            // TODO: Implement search functionality
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Search not yet implemented')),
            );
          },
        ),
        IconButton(
          icon: const Icon(Icons.filter_list),
          onPressed: () {
            // TODO: Implement filter functionality
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Filter not yet implemented')),
            );
          },
        ),
      ],
      body: _isLoading
          ? const LoadingIndicator()
          : _projects.isEmpty
          ? EmptyStateWidget(
              message: 'No projects found. Start by creating a new one!',
              icon: Icons.folder_off,
              actionButton: ElevatedButton.icon(
                onPressed: _navigateToCreateProject,
                icon: const Icon(Icons.add),
                label: const Text('Create New Project'),
              ),
            )
          : ListView.builder(
              itemCount: _projects.length,
              itemBuilder: (context, index) {
                final project = _projects[index];
                return ProjectCard(
                  project: project,
                  onTap: () => _navigateToProjectDetails(project.id),
                  onArchive: () => _archiveProject(project),
                  onDelete: () => _deleteProject(project),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: _navigateToCreateProject,
        child: const Icon(Icons.add),
      ),
    );
  }
}
