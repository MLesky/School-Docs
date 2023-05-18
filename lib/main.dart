import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_docs/app/registration/providers/providers.dart';
import 'package:school_docs/themes/theme.dart';
import 'package:school_docs/utils/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  runApp(
      MultiProvider(
    providers: [
      ListenableProvider(create: (BuildContext context) => StudentProvider()),
      ChangeNotifierProvider(
       create: (BuildContext context) => ThemeProvider(isDarkMode: prefs.getBool('isDarkMode') ?? false),
      ),
    ],
    child: const MyApp(),
  ));
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
        routerConfig: getRoutes(context),
      ),
    );
  }
}
