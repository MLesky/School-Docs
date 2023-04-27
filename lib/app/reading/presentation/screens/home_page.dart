import 'package:flutter/material.dart';
import 'package:school_docs/utils/constants/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(kAppName),),
      body: const Center(child: Text('Welcome'),),
    );
  }
}
