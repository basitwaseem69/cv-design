import 'package:flutter/material.dart';
import 'package:task_cv/add_experience.dart';
import 'package:task_cv/share.dart';
// import 'package:task_cv/skills.dart';

import 'add_education.dart';
import 'cvscreen.dart';
import 'personal_info.dart';
import 'skills.dart';


void main() {
  runApp(My());
}
class My extends StatelessWidget {
  const My({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      // home: Cv(),
      // home:PersonalInfo(),
      // home:AddEducation() ,
      // home: Skills(),
      // home: AddExperience(),
      home: Share(),
    );
  }
}