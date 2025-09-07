import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sitecompanion/widgets/app_scaffold.dart';
import 'package:sitecompanion/widgets/project_form.dart';
import 'package:sitecompanion/domain/entities/project.dart';
import 'package:get_it/get_it.dart';
import 'package:sitecompanion/data/repositories/project_repository.dart';
import 'package:sitecompanion/widgets/loading_indicator.dart';

class ProjectEditScreen extends StatefulWidget {
  final String projectId;

  const ProjectEditScreen({super.key, required this.projectId});

  @override
  State<ProjectEditScreen> createState() => _ProjectEditScreenState();
}

class _ProjectEditScreenState extends State<ProjectEditScreen> {
  bool _isSaving = false;
  Project? _project;
  bool _isLoading = true;
  late final ProjectRepository _projectRepository;

  @override
  void initState() {
    super.initState();
    _projectRepository = GetIt.instance<ProjectRepository>();
    _loadProject();
  }

  Future<void> _loadProject() async {
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

  void _handleUpdateProject(Project updatedProject) async {
    setState(() {
      _isSaving = true;
    });
    await _projectRepository.updateProject(updatedProject);
    setState(() {
      _isSaving = false;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Project "${updatedProject.propertyName}" updated!'),
      ),
    );
    GoRouter.of(context).pop(); // Go back to project details
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Edit Project',
      body: _isLoading
          ? const LoadingIndicator()
          : _project == null
          ? const Center(child: Text('Project not found!'))
          : ProjectForm(
              initialProject: _project,
              onSave: _handleUpdateProject,
              isLoading: _isSaving,
            ),
    );
  }
}
