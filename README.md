![logo](android/app/src/main/res//mipmap-hdpi/ic_launcher.png)
# SCHOOL DOCS 

## A flutter app for reading and accessing class documents (PDFs)

Clone this repo to your computer directory

    git clone https://github.com/MLesky/School-Docs.git

Get the packages

    flutter pub get

Change the launcher icon

    flutter pub run flutter_launcher_icons:main

After making changes, commit and push
    
    flutter add .
    flutter commit -m "your commit message (changes you have made)"
    flutter branch -M [your_name (without the square brackets, should be one word or use underscores to join word)]

    flutter push -u origin [your_name (the one used in the previous command)]

Get changes
    
    flutter pull origin main

[Figma Prototype](https://www.figma.com/proto/FADLwPUjddQtKD36Xh3PQU/School-Docs?page-id=0%3A1&node-id=64-1615&viewport=-219%2C420%2C0.32&scaling=scale-down&starting-point-node-id=1%3A2&show-proto-sidebar=1)

### Adding Documents

#### Models
    School -> Add List Of Departments
        Department -> Add List of Options
            Option-> Add List of Years
                Year -> Add List of Semesters
                    Semester -> Add List of Courses
                        Courses -> Add List of Documents

Example
    
    final List allSchools = <School>[
      School(
          name: "School Name",
          abbreviation: "School Abbreviation",
          departments: <Department>[
            Department(
                name: "Department Name",
                abbreviation: "Department Abbreviation",
                options: <Option>[
                  Option(
                      name: "Department Name",
                      abbreviation: "Department Abbreviation",
                      years: <Year>[
                        Year(
                            yearInt: 1, 
                            semesters: <Semester>[
                              Semester(
                                  semesterInt: 2, 
                                  courses: <Course>[
                                    Course(
                                        name: "Course Name", 
                                        abbreviation: "Course Code", 
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

To see how the documents are added, see the following files
    
* [Documents](lib/app/reading/data/documents.dart)
* [Courses](lib/app/reading/data/courses.dart)
* [Semesters](lib/app/registration/data/options.dart)
* [Years](lib/app/registration/data/options.dart)
* [Options](lib/app/registration/data/options.dart)
* [Departments](lib/app/registration/data/departments.dart)
* [Schools](lib/app/registration/data/schools.dart)

And their models
* [Document](lib/app/reading/models/document.dart)
* [Course](lib/app/reading/models/course.dart)
* [Semester](lib/app/registration/models/semester.dart)
* [Year](lib/app/registration/models/year.dart)
* [Option](lib/app/registration/models/options.dart)
* [Department](lib/app/registration/models/department.dart)
* [School](lib/app/registration/models/school.dart)

#### TODO: fix resetting to initial route on hot reload and swapping the theme
