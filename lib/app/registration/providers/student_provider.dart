import 'package:flutter/material.dart';
import 'package:school_docs/app/registration/registration.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StudentProvider extends ChangeNotifier {
  final Student _userInfo = Student();
  late SharedPreferences studentPrefs;

  StudentProvider(){
    getStudentInfo();
  }

  set setSchool(String newSchool) {
    _userInfo.school = newSchool;
    notifyListeners();
  }

  set setDepartment(String newDepartment) {
    _userInfo.department = newDepartment;
    notifyListeners();
  }

  set setOption(String newOption) {
    _userInfo.option = newOption;
    notifyListeners();
  }

  set setYear(int newYear) {
    _userInfo.year = newYear;
    notifyListeners();
  }

  void saveStudentInfo() async {
    studentPrefs = await SharedPreferences.getInstance();
    studentPrefs.setString('school', _userInfo.school);
    studentPrefs.setString('department', _userInfo.department);
    studentPrefs.setString('option', _userInfo.option);
    studentPrefs.setInt('year', _userInfo.year);
  }

  void getStudentInfo() async {
    studentPrefs = await SharedPreferences.getInstance();
    _userInfo.school = studentPrefs.getString('school') ?? '';
    _userInfo.department = studentPrefs.getString('department') ?? '';
    _userInfo.option = studentPrefs.getString('option') ?? '';
    _userInfo.year = studentPrefs.getInt('year') ?? 0;
    notifyListeners();
  }

  String get school => _userInfo.school;
  String get department => _userInfo.department;
  String get option => _userInfo.option;
  int get year => _userInfo.year;

  bool get isRegistered =>
      _userInfo.school != '' &&
      _userInfo.department != '' &&
      _userInfo.option != '' &&
      _userInfo.year != 0;
}
