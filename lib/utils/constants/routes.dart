import 'package:go_router/go_router.dart';
import 'package:school_docs/app/registration/registration.dart';
import 'package:school_docs/app/reading/reading.dart';

class Routes {
  static const String welcome = '/welcome';
  static const String selectSchool = 'select_school';
  static const String selectDepartment = 'select_department';
  static const String selectOption = 'select_option';
  static const String selectYear = 'select_year';
  static const String home = 'home';
  static const String reading = 'reading';
}

// TODO: add params for school, department and options routes

GoRouter routes = GoRouter(
  initialLocation: Routes.welcome,
  routes: [
    GoRoute(
        path: Routes.welcome,
        builder: ((context, state) => const WelcomeScreen()),
        routes: [
          GoRoute(
              name: Routes.selectSchool,
              path: Routes.selectSchool,
              builder: ((context, state) => const SelectSchoolPage())),
          GoRoute(
              path: Routes.selectDepartment,
              name: Routes.selectDepartment,
              builder: ((context, state) => const SelectDepartmentPage())),
          GoRoute(
              path: Routes.selectOption,
              name: Routes.selectOption,
              builder: ((context, state) => const SelectOptionPage())),
          GoRoute(
              path: Routes.selectYear,
              name: Routes.selectYear,
              builder: ((context, state) => const SelectYearPage())),
        ]
    ),
    GoRoute(
        path: '/reading',
        name: Routes.home,
        builder: (context, state) => const HomePage())
  ]
);
