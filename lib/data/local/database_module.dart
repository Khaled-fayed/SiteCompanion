import 'package:drift_flutter/drift_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'dart:io';
import 'package:drift/native.dart'; // Import for NativeDatabase

import 'app_database.dart';

// This is a singleton instance of the database
Future<AppDatabase> constructDb({bool logStatements = false}) async {
  if (Platform.isIOS || Platform.isAndroid) {
    final executor = driftDatabase(
      name: 'site_companion_db',
      native: DriftNativeOptions(
        // Optional: Enable sharing across isolates if needed for background tasks
        // shareAcrossIsolates: true,
      ),
    );
    return AppDatabase.fromExecutor(executor);
  } else if (Platform.isLinux || Platform.isWindows || Platform.isMacOS) {
    final dbPath = await getDbPath();
    final file = File(p.join(dbPath, 'site_companion_db.sqlite'));
    final executor = NativeDatabase(file);
    return AppDatabase.fromExecutor(executor);
  } else {
    // Fallback for other platforms, using the default constructor with a name
    return AppDatabase.fromExecutor(driftDatabase(name: 'site_companion_db'));
  }
}

Future<String> getDbPath() async {
  // For desktop platforms, we need to provide a path.
  // For mobile, drift_flutter handles it.
  // This is a simplified example, you might want to use path_provider for all platforms
  // or a more robust solution for desktop.
  final appDocumentDir = await getApplicationDocumentsDirectory();
  return p.join(appDocumentDir.path, 'database');
}
