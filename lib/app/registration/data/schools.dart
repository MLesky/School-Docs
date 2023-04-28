import 'package:school_docs/app/registration/data/data.dart';
import 'package:school_docs/app/registration/models/models.dart';
export 'package:school_docs/app/registration/data/data.dart';

// TODO: set departments for each school
final List<School> listOfSchools = [
  School(name: 'College of Technology', abbreviation: 'COLTECH', departments: listOfDepartments2),
  School(name: 'National Polytechnic Higher Institute', abbreviation: 'NAPHI', departments: listOfDepartments),
  School(name: 'Higher Institute Of Commerce and Management', abbreviation: 'HICM', departments: listOfDepartments3),
  School(name: 'Higher Institute Of Transports and Logistics', abbreviation: 'HITL', departments: listOfDepartments2),
  School(name: 'Higher Teachers Training College', abbreviation: 'HTTC (ENS)', departments: listOfDepartments3),
  School(name: 'Higher Technical Teachers Training College', abbreviation: 'HTTTC (ENSET)', departments: listOfDepartments),
  School(name: 'Faculty of Science', departments: listOfDepartments2),
  School(name: 'Faculty of Health Science', abbreviation: 'FHS', departments: listOfDepartments3),
  School(name: 'Faculty of Economic and Management Sciences', abbreviation: 'FEMS', departments: listOfDepartments),
  School(name: 'Faculty of Law and Political Sciences', departments: listOfDepartments),
  School(name: 'Faculty of Arts', departments: listOfDepartments),
  School(name: 'Faculty of Education', abbreviation: 'FED', departments: listOfDepartments),
];