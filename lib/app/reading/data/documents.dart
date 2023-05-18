import 'package:school_docs/app/reading/models/models.dart';

/// Add documents
/// Create a [List] which takes type [Document] and add some documents the list
/// [Document]s required to have a [title] and a [pdfPath]
/// [lecturesName], [coverImagePath] and [id] are optional
List<Document> listOfCENP3203 = [
  Document(title: 'Data Integrity and Security Lectures', coverImagePath: 'assets/images/test.jpg', pdfPath: 'pdf/data-security-and-integrity.pdf'),
];

List<Document> aLgoNotes = [
  Document(title: 'Algorithm and Complexity', pdfPath: 'pdf/Algorithms-and-complexities-coltech 2.pdf'),
];

List<Document> softwareConstruct = [
  Document(title: 'Introductory Chapters', pdfPath: 'pdf/software-construct-intro.pdf'),
  Document(title: 'SRS', pdfPath: 'pdf/SRS.pdf'),
];

List<Document> listOfEEEP3201 = [
 Document(title: 'Digital Control Systems Lectures', lecturersName: 'Atangana Jael', coverImagePath: 'assets/images/dgcon-notes.png', pdfPath: 'pdf/DIGITAL-CONTROL-SYSTEMS-NOTES-2023.pdf'),
 Document(title: 'Digital Control Systems Tutorials', lecturersName: 'Atangana Jael', pdfPath: 'pdf/DIGITAL-CONTROL-SYSTEMS-TUTORIALS.pdf'),
];

/// uncomment this to add documents for a course
// List<Document> englishNotes = [
//   Document(title: 'Chapter 1', pdfPath: 'pdf/fundamentals_of_english.pdf'),
//   Document(title: 'Chapter 2', pdfPath: 'pdf/second_pdf.pdf'),
// ];