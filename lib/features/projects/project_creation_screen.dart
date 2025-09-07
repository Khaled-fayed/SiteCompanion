import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sitecompanion/widgets/app_scaffold.dart';
import 'package:sitecompanion/widgets/project_form.dart';
import 'package:sitecompanion/domain/entities/project.dart';
import 'package:get_it/get_it.dart';
import 'package:sitecompanion/data/repositories/project_repository.dart';

class ProjectCreationScreen extends StatefulWidget {
  const ProjectCreationScreen({super.key});

  @override
  State<ProjectCreationScreen> createState() => _ProjectCreationScreenState();
}

class _ProjectCreationScreenState extends State<ProjectCreationScreen> {
  bool _isSaving = false;
  late final ProjectRepository _projectRepository;

  @override
  void initState() {
    super.initState();
    _projectRepository = GetIt.instance<ProjectRepository>();
  }

  void _handleSaveProject(Project newProject) async {
    setState(() {
      _isSaving = true;
    });
    await _projectRepository.createProject(newProject);
    setState(() {
      _isSaving = false;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Project "${newProject.propertyName}" created!')),
    );
    GoRouter.of(context).pop(); // Go back to projects overview
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Create New Project',
      body: ProjectForm(onSave: _handleSaveProject, isLoading: _isSaving),
    );
  }
}
