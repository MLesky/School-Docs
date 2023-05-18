import 'package:school_docs/app/reading/models/models.dart';
import 'package:school_docs/app/registration/data/data.dart';
import 'package:school_docs/app/registration/models/models.dart';

final List<School> listOfSchools = [
  School(
      name: 'College of Technology',
      abbreviation: 'COLTECH',
      departments: listOfColtechDepartments),
  School(
      name: 'National Polytechnic Higher Institute',
      abbreviation: 'NAPHI',
      departments: listOfNahpiDepartments),
  School(
      name: 'Higher Institute Of Commerce and Management',
      abbreviation: 'HICM',
      departments: listOfOtherSchoolsDepartments),
  School(
      name: 'Higher Institute Of Transports and Logistics',
      abbreviation: 'HITL',
      departments: listOfOtherSchoolsDepartments),
  School(
      name: 'Higher Teachers Training College',
      abbreviation: 'HTTC (ENS)',
      departments: listOfOtherSchoolsDepartments),
  School(
      name: 'Higher Technical Teachers Training College',
      abbreviation: 'HTTTC (ENSET)',
      departments: listOfOtherSchoolsDepartments),
  School(
      name: 'Faculty of Science', departments: listOfOtherSchoolsDepartments),
  School(
      name: 'Faculty of Health Science',
      abbreviation: 'FHS',
      departments: listOfOtherSchoolsDepartments),
  School(
      name: 'Faculty of Economic and Management Sciences',
      abbreviation: 'FEMS',
      departments: listOfOtherSchoolsDepartments),
  School(
      name: 'Faculty of Law and Political Sciences',
      departments: listOfOtherSchoolsDepartments),
  School(name: 'Faculty of Arts', departments: listOfOtherSchoolsDepartments),
  School(
      name: 'Faculty of Education',
      abbreviation: 'FED',
      departments: listOfOtherSchoolsDepartments),
];

/**
final List allSchools = <School>[
  // List of schools
  School(
      name: "School Name",
      abbreviation: "School Abbreviation",
      departments: <Department>[
        // List of Departments
        Department(
            name: "Department Name",
            abbreviation: "Department Abbreviation",
            options: <Option>[
              // List of Options
              Option(
                  name: "Department Name",
                  abbreviation: "Department Abbreviation",
                  years: <Year>[
                    // List of Study Years
                    Year(
                        yearInt: 1,
                        semesters: <Semester>[
                          // List of Study Semesters
                          Semester(
                              semesterInt: 2,
                              courses: <Course>[
                                // List of Courses
                                Course(
                                    name: "Course Name",
                                    abbreviation: "Course Code",
                                    // List of Documents
                                    documents: <Document>[
                                      Document(
                                          title: "Document Title",
                                          pdfPath: "pdf Path"
                                      ),
                                    ],
                                ),
                              ],
                          ),
                        ],
                    ),
                  ],
              ),
            ],
        ),
      ],
  ),
];
**/