import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:task_cv/add_experience.dart';
import 'package:task_cv/practise.dart';
import 'package:task_cv/practise1.dart';
import 'package:task_cv/share.dart';
import 'package:task_cv/shared2pref.dart';
// import 'package:task_cv/skills.dart';

import 'add_education.dart';
import 'cvscreen.dart';
import 'firebase_options.dart';
import 'personal_info.dart';
import 'skills.dart';


 main()async {
  runApp(My());
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
}
class My extends StatelessWidget {
  const My({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "fira"
      ),
      debugShowCheckedModeBanner: false,
      // home: Cv(),
      // home:PersonalInfo(),
      // home: AddExperience(),
      // home:AddEducation() ,
      // home: Skills(),
      // home: PersonalInfo(),
      // home: Share(),
      // home: SharedPref(),
      // home:Practise(),
      home: Practise1(),

   
    );
  }
}