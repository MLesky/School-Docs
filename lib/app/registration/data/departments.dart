import 'package:school_docs/app/registration/data/data.dart';
import 'package:school_docs/app/registration/models/models.dart';

final List<Department> listOfColtechDepartments = [
  Department(name: 'Computer Engineering', abbreviation: 'CEN', options: listOfColtechCenOptions),
  Department(name: 'Electrical and Electronic Engineering', abbreviation: 'EEE', options: listOfColtechEeeOptions),
  Department(name: 'Agricultural Engineering', abbreviation: 'AGE'),
  Department(name: 'Agricultural and environmental Engineering', abbreviation: 'AEE', options:[]),
  Department(name: 'Animal Production Technology', abbreviation: 'APT', options: []),
  Department(name: 'Civil Engineering', abbreviation: 'CE', options: []),
  Department(name: 'Crop Production Technology', abbreviation: 'CPT', options: []),
  Department(name: 'Engineering and Technology', abbreviation: 'ET', options: []),
  Department(name: 'Forestry and Wildlife Technology', abbreviation: 'FWT', options: []),
  Department(name: 'Home Economics and Social Work', abbreviation: 'HESW', options: []),
  Department(name: 'Nutrition, Food and Bioresource Technology', abbreviation: 'NFBT', options: []),
];

final List<Department> listOfNahpiDepartments = [
  Department(name: 'Computer Engineering', abbreviation: 'COM', options: []),
  Department(name: 'Electrical and Electronics Engineering', abbreviation: 'EEEE', options: []),
  Department(name: 'Chemical and Biological Engineering - CBE', abbreviation: 'CBE', options: listOfNahpiCbeOptions),
  Department(name: 'Civil Engineering and Architecture', abbreviation: 'CVL'),
  Department(name: 'Mechanical and Industrial Engineering', abbreviation: 'MEC', options: []),
  Department(name: 'Mining and Mineral Engineering', abbreviation: 'MIN', options: []),
  Department(name: 'APetroleum Engineering', abbreviation: 'PET'),
];

final List<Department> listOfOtherSchoolsDepartments = [];
