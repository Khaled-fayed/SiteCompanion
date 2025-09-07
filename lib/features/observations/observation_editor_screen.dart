import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sitecompanion/widgets/app_scaffold.dart';
import 'package:sitecompanion/widgets/custom_text_field.dart';
import 'package:sitecompanion/widgets/primary_button.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sitecompanion/domain/entities/observation.dart';
import 'package:sitecompanion/core/services/media_service.dart';
import 'package:sitecompanion/data/repositories/observation_repository.dart';
import 'package:get_it/get_it.dart';
import 'dart:io';

class ObservationEditorScreen extends StatefulWidget {
  final String projectId;
  final String? areaId; // Made nullable for new observations
  final String? observationId; // Null for new observation

  const ObservationEditorScreen({
    super.key,
    required this.projectId,
    this.areaId, // No longer required
    this.observationId,
  });

  @override
  State<ObservationEditorScreen> createState() =>
      _ObservationEditorScreenState();
}

class _ObservationEditorScreenState extends State<ObservationEditorScreen> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _noteController;
  late TextEditingController _tagController; // Added for tag input
  late TextEditingController _areaIdController; // Added for areaId input
  Observation? _initialObservation;
  bool _isLoading = true;
  bool _isSaving = false;
  String? _photoPath;
  List<String> _tags = [];
  double _severity = 1.0;

  final MediaService _mediaService = GetIt.I<MediaService>();
  final ObservationRepository _observationRepository =
      GetIt.I<ObservationRepository>();

  @override
  void initState() {
    super.initState();
    _noteController = TextEditingController();
    _tagController = TextEditingController(); // Initialize tag controller
    _areaIdController = TextEditingController(
      text: widget.areaId,
    ); // Initialize areaId controller
    if (widget.observationId != null) {
      _loadObservation();
    } else {
      _isLoading = false;
    }
  }

  Future<void> _loadObservation() async {
    setState(() {
      _isLoading = true;
    });
    final observation = await _observationRepository.getObservationById(
      widget.observationId!,
    );
    if (observation != null) {
      _initialObservation = observation as Observation?;
      _noteController.text = _initialObservation!.note ?? '';
      _areaIdController.text = _initialObservation!.areaId ?? '';
      _photoPath = _initialObservation!.photoPath;
      _tags = List.from(_initialObservation!.tags);
      _severity = _initialObservation!.severity;
    }
    setState(() {
      _isLoading = false;
    });
  }

  Future<void> _pickImage(ImageSource source) async {
    XFile? pickedFile;
    if (source == ImageSource.gallery) {
      pickedFile = await _mediaService.pickImageFromGallery();
    } else {
      pickedFile = await _mediaService.takePhoto();
    }

    if (pickedFile != null) {
      setState(() {
        _photoPath = pickedFile!.path;
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('No image selected or permission denied.'),
        ),
      );
    }
  }

  void _showImageSourceSelection(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('Photo Gallery'),
                onTap: () {
                  Navigator.pop(context);
                  _pickImage(ImageSource.gallery);
                },
              ),
              ListTile(
                leading: const Icon(Icons.camera_alt),
                title: const Text('Camera'),
                onTap: () {
                  Navigator.pop(context);
                  _pickImage(ImageSource.camera);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _addTag(String tag) {
    if (tag.isNotEmpty && !_tags.contains(tag)) {
      setState(() {
        _tags.add(tag);
      });
    }
  }

  void _removeTag(String tag) {
    setState(() {
      _tags.remove(tag);
    });
  }

  void _handleSaveObservation() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isSaving = true;
      });

      final newObservation =
          (_initialObservation?.copyWith(
            projectId: widget.projectId,
            areaId: _areaIdController.text, // Use controller text
            note: _noteController.text,
            photoPath: _photoPath,
            tags: _tags,
            severity: _severity,
          ) ??
          Observation.create(
            projectId: widget.projectId,
            areaId: _areaIdController.text, // Use controller text
            note: _noteController.text,
            photoPath: _photoPath,
            tags: _tags,
            severity: _severity,
          ));

      if (widget.observationId == null) {
        await _observationRepository.createObservation(newObservation);
      } else {
        await _observationRepository.updateObservation(newObservation);
      }

      setState(() {
        _isSaving = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Observation "${_noteController.text.substring(0, _noteController.text.length > 20 ? 20 : _noteController.text.length)}..." saved!',
          ),
        ),
      );
      GoRouter.of(context).pop(); // Go back to previous screen
    }
  }

  @override
  void dispose() {
    _noteController.dispose();
    _tagController.dispose(); // Dispose tag controller
    _areaIdController.dispose(); // Dispose areaId controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: widget.observationId == null
          ? 'New Observation'
          : 'Edit Observation',
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : Form(
              key: _formKey,
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextField(
                      controller: _areaIdController,
                      labelText: 'Area ID',
                      hintText: 'Enter the Area ID (e.g., a UUID)',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Area ID cannot be empty';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    CustomTextField(
                      controller: _noteController,
                      labelText: 'Observation Note',
                      hintText: 'Enter your observation notes here',
                      maxLines: 5,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Note cannot be empty';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Photo',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 10),
                    _photoPath != null
                        ? Image.file(
                            File(_photoPath!),
                            height: 200,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          )
                        : const Text('No photo selected'),
                    const SizedBox(height: 10),
                    PrimaryButton(
                      onPressed: () => _showImageSourceSelection(context),
                      text: _photoPath == null ? 'Add Photo' : 'Change Photo',
                      isLoading: false,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Tags',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 10),
                    Wrap(
                      spacing: 8.0,
                      children: _tags
                          .map(
                            (tag) => Chip(
                              label: Text(tag),
                              onDeleted: () => _removeTag(tag),
                            ),
                          )
                          .toList(),
                    ),
                    CustomTextField(
                      controller: _tagController, // Assign the new controller
                      labelText: 'Add Tag',
                      hintText: 'Press enter to add tag',
                      onChanged: (value) {
                        // onChanged is used here to allow immediate processing or
                        // to capture the value for submission.
                        // For "press enter to add tag" functionality,
                        // we need to handle submission explicitly.
                        // Since CustomTextField doesn't have onFieldSubmitted,
                        // we'll rely on a button or a more complex input for submission.
                        // For now, we'll keep the logic for adding on a separate action
                        // or consider a different widget if direct "on enter" is critical.
                      },
                    ),
                    const SizedBox(height: 10),
                    PrimaryButton(
                      onPressed: () {
                        _addTag(_tagController.text.trim());
                        _tagController.clear(); // Clear the text field
                      },
                      text: 'Add Tag',
                      isLoading: false,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Severity: ${_severity.toInt()}',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Slider(
                      value: _severity,
                      min: 1.0,
                      max: 5.0,
                      divisions: 4,
                      label: _severity.toInt().toString(),
                      onChanged: (value) {
                        setState(() {
                          _severity = value;
                        });
                      },
                    ),
                    const SizedBox(height: 30),
                    PrimaryButton(
                      onPressed: _handleSaveObservation,
                      text: 'Save Observation',
                      isLoading: _isSaving,
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
