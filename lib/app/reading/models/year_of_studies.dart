import 'package:school_docs/app/reading/models/models.dart';

class YearOfStudies {
  final int year;
  final List<Course> semester1;
  final List<Course> semester2;
  final List<Course> semester3;
  final List<Course> semester4;

  YearOfStudies(
      {required this.year,
      required this.semester1,
      required this.semester2,
      this.semester3 = const [],
      this.semester4 = const []});
}
