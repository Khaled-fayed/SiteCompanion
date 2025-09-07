import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:pdf/widgets.dart' as pw;
import 'package:sitecompanion/domain/entities/project.dart';
import 'package:sitecompanion/core/utils/app_constants.dart';
import 'package:intl/intl.dart';

class ReportService {
  // DOCX generation is deferred due to dependency issues.
  // Future<String> generateDocxReport(
  //   Project project,
  //   String templatePath,
  // ) async {
  //   // Implementation for DOCX generation
  // }

  Future<String> generatePdfReport(Project project) async {
    final pdf = pw.Document();

    pdf.addPage(
      pw.Page(
        build: (pw.Context context) {
          return pw.Center(
            child: pw.Text('PDF Report for ${project.propertyName}'),
          );
        },
      ),
    );

    final outputDir = await getApplicationDocumentsDirectory();
    final reportsDir = Directory(p.join(outputDir.path, 'reports'));
    if (!await reportsDir.exists()) {
      await reportsDir.create(recursive: true);
    }

    final fileName =
        '${project.propertyName}_${DateFormat('yyyyMMdd').format(DateTime.now())}_v1.${AppConstants.pdfExtension}';
    final filePath = p.join(reportsDir.path, fileName);
    final file = File(filePath);
    await file.writeAsBytes(await pdf.save());
    return filePath;
  }
}
