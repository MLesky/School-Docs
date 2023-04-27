// TODO: add or generate id property
import 'package:school_docs/app/registration/models/models.dart';

class School {
  final String id;
  final String name;
  final String abbreviation;
  final List<Department> departments;
  School({this.id = '', required this.name, required this.departments, this.abbreviation = ''});
}

