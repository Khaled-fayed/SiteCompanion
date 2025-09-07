import 'package:speech_to_text/speech_to_text.dart';
import 'package:permission_handler/permission_handler.dart';

class SpeechToTextService {
  final SpeechToText _speechToText = SpeechToText();
  bool _isListening = false;
  String _lastWords = '';

  bool get isListening => _isListening;
  String get lastWords => _lastWords;

  Future<bool> initSpeech() async {
    final status = await Permission.microphone.request();
    if (status.isGranted) {
      return await _speechToText.initialize(
        onStatus: (status) {
          _isListening = status == 'listening';
        },
        onError: (errorNotification) {
          print('SpeechToText error: ${errorNotification.errorMsg}');
        },
      );
    } else {
      print('Microphone permission denied');
      return false;
    }
  }

  void startListening({required Function(String) onResult}) async {
    _lastWords = '';
    _speechToText.listen(
      onResult: (result) {
        _lastWords = result.recognizedWords;
        onResult(_lastWords);
      },
      listenFor: const Duration(seconds: 30), // Listen for up to 30 seconds
      pauseFor: const Duration(seconds: 5), // Pause if no speech for 5 seconds
      partialResults: true,
      localeId: 'en_US', // Specify locale if needed
    );
  }

  void stopListening() {
    _speechToText.stop();
    _isListening = false;
  }

  void cancelListening() {
    _speechToText.cancel();
    _isListening = false;
  }
}
