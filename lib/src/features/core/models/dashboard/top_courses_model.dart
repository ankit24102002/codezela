import 'package:flutter/material.dart';

class DashBoadrTopCoursesModels{
  final String title;
  final String heading;
  final String subHeading;
  final VoidCallback?onPress;

  DashBoadrTopCoursesModels(this.title,this.heading,this.subHeading,this.onPress);

static List<DashBoadrTopCoursesModels>list=[
  DashBoadrTopCoursesModels("Flutter Crash Course", "3 Sections", "Programming Languages", null),
  DashBoadrTopCoursesModels("HTML/CSS Crash Course", "2 Sections", "35 Lessons", null),
  DashBoadrTopCoursesModels("Material Design Course", "6 Sections", "Programming And Design", null),
  
];

}