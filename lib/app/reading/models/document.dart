
import 'package:school_docs/generated/assets.dart';

class Document {
  final String id;
  final String title;
  final String lecturersName;
  final String coverImagePath;
  final String pdfPath;

  Document({this.pdfPath = '', this.id = '', required this.title, this.lecturersName = '', this.coverImagePath = Assets.imagesBookCover});
}