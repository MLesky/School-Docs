import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:school_docs/utils/constants/constants.dart';

class PdfReaderScreen extends StatelessWidget {
  const PdfReaderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(kAppName),
      ),
      body: Container(),
    );
  }
}
