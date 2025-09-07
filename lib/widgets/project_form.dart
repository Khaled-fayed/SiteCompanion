import 'package:flutter/material.dart';
import 'package:sitecompanion/widgets/custom_text_field.dart';
import 'package:sitecompanion/widgets/primary_button.dart';
import 'package:sitecompanion/domain/entities/project.dart';

class ProjectForm extends StatefulWidget {
  final Project? initialProject;
  final ValueChanged<Project> onSave;
  final bool isLoading;

  const ProjectForm({
    super.key,
    this.initialProject,
    required this.onSave,
    this.isLoading = false,
  });

  @override
  State<ProjectForm> createState() => _ProjectFormState();
}

class _ProjectFormState extends State<ProjectForm> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _typeController;
  late TextEditingController _propertyAddressController;
  late TextEditingController _propertyNameController;
  late TextEditingController _clientNameController;
  late TextEditingController _engineerNameController;
  late DateTime _inspectionDate;

  @override
  void initState() {
    super.initState();
    _typeController = TextEditingController(
      text: widget.initialProject?.type ?? '',
    );
    _propertyAddressController = TextEditingController(
      text: widget.initialProject?.propertyAddress ?? '',
    );
    _propertyNameController = TextEditingController(
      text: widget.initialProject?.propertyName ?? '',
    );
    _clientNameController = TextEditingController(
      text: widget.initialProject?.clientName ?? '',
    );
    _engineerNameController = TextEditingController(
      text: widget.initialProject?.engineerName ?? '',
    );
    _inspectionDate = widget.initialProject?.inspectionDate ?? DateTime.now();
  }

  @override
  void dispose() {
    _typeController.dispose();
    _propertyAddressController.dispose();
    _propertyNameController.dispose();
    _clientNameController.dispose();
    _engineerNameController.dispose();
    super.dispose();
  }

  void _presentDatePicker() {
    showDatePicker(
      context: context,
      initialDate: _inspectionDate,
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
    ).then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _inspectionDate = pickedDate;
      });
    });
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      final newProject = Project.create(
        type: _typeController.text,
        inspectionDate: _inspectionDate,
        propertyAddress: _propertyAddressController.text,
        propertyName: _propertyNameController.text,
        clientName: _clientNameController.text,
        engineerName: _engineerNameController.text,
      );
      widget.onSave(newProject);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomTextField(
              labelText: 'Project Type',
              controller: _typeController,
              validator: (value) =>
                  value!.isEmpty ? 'Please enter a project type' : null,
            ),
            const SizedBox(height: 16),
            CustomTextField(
              labelText: 'Property Name',
              controller: _propertyNameController,
              validator: (value) =>
                  value!.isEmpty ? 'Please enter a property name' : null,
            ),
            const SizedBox(height: 16),
            CustomTextField(
              labelText: 'Property Address',
              controller: _propertyAddressController,
              validator: (value) =>
                  value!.isEmpty ? 'Please enter a property address' : null,
            ),
            const SizedBox(height: 16),
            CustomTextField(
              labelText: 'Client Name',
              controller: _clientNameController,
              validator: (value) =>
                  value!.isEmpty ? 'Please enter a client name' : null,
            ),
            const SizedBox(height: 16),
            CustomTextField(
              labelText: 'Engineer Name',
              controller: _engineerNameController,
              validator: (value) =>
                  value!.isEmpty ? 'Please enter an engineer name' : null,
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Inspection Date: ${MaterialLocalizations.of(context).formatShortDate(_inspectionDate)}',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                TextButton(
                  onPressed: _presentDatePicker,
                  child: const Text('Select Date'),
                ),
              ],
            ),
            const SizedBox(height: 24),
            PrimaryButton(
              text: widget.initialProject == null
                  ? 'Create Project'
                  : 'Save Changes',
              onPressed: _submitForm,
              isLoading: widget.isLoading,
            ),
          ],
        ),
      ),
    );
  }
}
