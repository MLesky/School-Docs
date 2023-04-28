import 'package:school_docs/app/registration/data/data.dart';
import 'package:school_docs/app/registration/models/models.dart';

// TODO: set departments for each school
final List<School> listOfSchools = [
  School(name: 'College of Technology', abbreviation: 'COLTECH', departments: listOfColtechDepartments),
  School(name: 'National Polytechnic Higher Institute', abbreviation: 'NAPHI', departments: listOfNahpiDepartments),
  School(name: 'Higher Institute Of Commerce and Management', abbreviation: 'HICM', departments: listOfOtherSchoolsDepartments),
  School(name: 'Higher Institute Of Transports and Logistics', abbreviation: 'HITL', departments: listOfOtherSchoolsDepartments),
  School(name: 'Higher Teachers Training College', abbreviation: 'HTTC (ENS)', departments: listOfOtherSchoolsDepartments),
  School(name: 'Higher Technical Teachers Training College', abbreviation: 'HTTTC (ENSET)', departments: listOfOtherSchoolsDepartments),
  School(name: 'Faculty of Science', departments: listOfOtherSchoolsDepartments),
  School(name: 'Faculty of Health Science', abbreviation: 'FHS', departments: listOfOtherSchoolsDepartments),
  School(name: 'Faculty of Economic and Management Sciences', abbreviation: 'FEMS', departments: listOfOtherSchoolsDepartments),
  School(name: 'Faculty of Law and Political Sciences', departments: listOfOtherSchoolsDepartments),
  School(name: 'Faculty of Arts', departments: listOfOtherSchoolsDepartments),
  School(name: 'Faculty of Education', abbreviation: 'FED', departments: listOfOtherSchoolsDepartments),
];