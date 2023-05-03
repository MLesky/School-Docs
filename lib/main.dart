import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_docs/themes/theme.dart';
import 'package:school_docs/utils/utils.dart';

void main() {
  runApp(
      ChangeNotifierProvider(
          create: (BuildContext context) => ThemeProvider(), 
          child: const MyApp(),
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // TODO: add screen loader
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: kAppName,
        theme: themeProvider.themeData,
        routerConfig: routes,
      ),
    );
  }
}
