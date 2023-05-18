import 'package:school_docs/app/registration/models/models.dart';

class Department {
  final String id;
  final String name;
  final String abbreviation;
  List<Option> options;
  Department({this.id = '', required this.name, required this.abbreviation, this.options = const []}){
    if(options.isEmpty) {
         options = <Option>[Option(id: id, abbreviation: abbreviation, name: name)];
    }
  }
}
