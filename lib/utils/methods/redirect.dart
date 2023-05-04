
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:school_docs/app/registration/providers/providers.dart';
import 'package:school_docs/utils/utils.dart';

void redirectIfNotRegistered(BuildContext context){
  if(!(context.select<StudentProvider, bool>((StudentProvider student) => student.isRegistered))) {
    context.go(Routes.welcome);
  }
}