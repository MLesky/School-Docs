import 'package:school_docs/app/reading/models/models.dart';

class Course {
  final String id;
  final String name;
  final String abbreviation;
  final List<Document> documents;
  Course({this.id = '', required this.name, required this.abbreviation, this.documents = const []});
}
