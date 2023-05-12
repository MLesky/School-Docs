import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:school_docs/app/registration/registration.dart';
import 'package:school_docs/app/reading/reading.dart';
import 'package:school_docs/app/settings/screen.dart';

class Routes {
  static const String welcome = '/welcome';
  static const String selectSchool = 'select_school';
  static const String selectDepartment = 'select_department';
  static const String selectOption = 'select_option';
  static const String selectYear = 'select_year';
  static const String home = 'home';
  static const String reading = 'reading';
  static const String documents = 'documents';
  static const String settings = 'settings';
}

// TODO: redirect on error route

GoRouter getRoutes(BuildContext context){
  return GoRouter(
      initialLocation: context.select<StudentProvider, bool>((StudentProvider student) => student.isRegistered)  ? '/home' : '/welcome', routes: [
    GoRoute(
        path: Routes.welcome,
        builder: ((context, state) => const WelcomeScreen()),
        routes: [
          GoRoute(
              name: Routes.selectSchool,
              path: Routes.selectSchool,
              builder: ((context, state) => const SelectSchoolPage())),
          GoRoute(
              path: 'department/:school',
              name: Routes.selectDepartment,
              builder: ((context, state) => SelectDepartmentPage(school: state.params['school']!,))),
          GoRoute(
              path: 'option/:school/:department',
              name: Routes.selectOption,
              builder: ((context, state) => SelectOptionPage(school: state.params['school']!, department: state.params['department']!,))),
          GoRoute(
              path: 'option/:school/:department/:option',
              name: Routes.selectYear,
              builder: ((context, state) => SelectYearPage(school: state.params['school']!, department: state.params['department']!, option: state.params['option']!,))),
        ]),
    GoRoute(
        path: '/home',
        name: Routes.home,
        builder: (context, state) => const HomePage(),
        routes: [
          GoRoute(
              path: 'documents/:course',
              name: Routes.documents,
              builder: (context, state) => DocumentPage(course: state.params['course']!,),
              routes: [
                GoRoute(
                  path: 'reading/:document/:docPath',
                  name: Routes.reading,
                  builder: (context, state) => PdfReaderScreen(document: state.params['document']!, docPath: state.params['docPath']!),
                ),
              ]),
          GoRoute(
              path: 'settings',
              name: Routes.settings,
              builder: (context, state) => SettingsPage()),
        ])
  ]);
}
