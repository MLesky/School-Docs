import 'package:flutter/material.dart';

class SemesterProvider extends ChangeNotifier {
  int semester = 1;

  void setSemester(int value){
    semester = value;
    notifyListeners();
  }
}