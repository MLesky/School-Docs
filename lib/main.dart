import 'package:flutter/material.dart';
import 'package:school_docs/themes/theme.dart';
import 'package:school_docs/utils/utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // TODO: add screen loader
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: kAppName,
      theme: Themes.lightTheme,
      routerConfig: routes,
    );
  }
}
