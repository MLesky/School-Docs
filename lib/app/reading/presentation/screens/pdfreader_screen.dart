import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PdfReaderScreen extends StatelessWidget {
  const PdfReaderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(GoRouter.of(context).location, style: TextStyle(fontSize: 10),),
      ),
      body: Container(),
    );
  }
}
