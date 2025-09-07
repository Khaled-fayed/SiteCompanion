import 'package:image_picker/image_picker.dart';
import 'package:camera/camera.dart';
import 'package:permission_handler/permission_handler.dart';

class MediaService {
  final ImagePicker _imagePicker = ImagePicker();
  List<CameraDescription>? _cameras;

  Future<void> initializeCamera() async {
    if (_cameras == null) {
      _cameras = await availableCameras();
    }
  }

  Future<XFile?> pickImageFromGallery() async {
    final status = await Permission.photos.request();
    if (status.isGranted) {
      return await _imagePicker.pickImage(source: ImageSource.gallery);
    } else {
      // Handle permission denied
      print('Gallery permission denied');
      return null;
    }
  }

  Future<XFile?> takePhoto() async {
    final status = await Permission.camera.request();
    if (status.isGranted) {
      if (_cameras == null || _cameras!.isEmpty) {
        await initializeCamera();
      }
      if (_cameras != null && _cameras!.isNotEmpty) {
        final CameraDescription firstCamera = _cameras!.first;
        // This is a simplified example. In a real app, you'd navigate to a camera screen.
        // For now, we'll just simulate taking a photo.
        return await _imagePicker.pickImage(source: ImageSource.camera);
      } else {
        print('No cameras available');
        return null;
      }
    } else {
      print('Camera permission denied');
      return null;
    }
  }
}
