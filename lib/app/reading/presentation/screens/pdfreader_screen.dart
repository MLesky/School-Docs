import 'package:flutter/material.dart';
import 'package:school_docs/utils/utils.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfReaderScreen extends StatelessWidget {
  const PdfReaderScreen({super.key, required this.document, required this.docPath});
  final String document;
  final String docPath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(document.toTitleCase()),
      ),
      body: SfPdfViewer.asset(docPath),
    );
  }
}