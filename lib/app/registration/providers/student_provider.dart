import 'package:flutter/material.dart';
import 'package:school_docs/app/registration/registration.dart';

class StudentProvider extends ChangeNotifier {
  final Student _userInfo = Student();

  void setSchool(String newSchool) {
    _userInfo.school = newSchool;
    notifyListeners();
  }

  void setDepartment(String newDepartment) {
    _userInfo.school = newDepartment;
    notifyListeners();
  }

  void setOption(String newOption) {
    _userInfo.option = newOption;
    notifyListeners();
  }

  void setYear(int newYear) {
    _userInfo.year = newYear;
    notifyListeners();
  }

  String get school => _userInfo.school;
  String get department => _userInfo.department;
  String get option => _userInfo.option;
  int get year => _userInfo.year;
}