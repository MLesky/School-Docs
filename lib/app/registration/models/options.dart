import 'package:school_docs/app/registration/registration.dart';

class Option {
  final String id;
  final String name;
  final String abbreviation;
  final List<Year> years;
  Option({this.years = const [], this.id = '', required this.name, required this.abbreviation});
}