import 'package:school_docs/app/reading/reading.dart';
import 'package:school_docs/app/registration/registration.dart';

final List<Option> listOfColtechCenOptions = [
  Option(name: 'Software Engineering', abbreviation: 'SWE', years: <Year>[
    Year(
      yearInt: 2,
      semesters: <Semester>[
        Semester(semesterInt: 2, courses: listOfColtechCenYear2Sem2Courses)
      ],
    )
  ]),
  Option(
      name: 'Computer Network and System Maintenance',
      abbreviation: 'CNSM',
      years: <Year>[
        Year(
          yearInt: 2,
          semesters: <Semester>[
            Semester(semesterInt: 2, courses: listOfColtechCenYear2Sem2Courses)
          ],
        )
      ]),
];

final List<Option> listOfColtechEeeOptions = [
  Option(name: 'Electrical Electronics Engineering', abbreviation: 'EEE'),
  Option(name: 'Electrical Power Engineering', abbreviation: 'EPE'),
];

final List<Option> listOfNahpiCbeOptions = [
  Option(
      name: 'Biotechnology and Food Process Engineering', abbreviation: 'BEPE'),
  Option(
      name: 'Biomedical Engineering and Medical Equipment Maintenance',
      abbreviation: 'BME'),
];
