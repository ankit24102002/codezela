import 'package:flutter/material.dart';

class DashBoardCategoriesModels{
  final String title;
  final String heading;
  final String subHeading;
  final VoidCallback?onPress;

  DashBoardCategoriesModels(this.title,this.heading,this.subHeading,this.onPress);

static List<DashBoardCategoriesModels>list=[
  DashBoardCategoriesModels("JS", "Java Script", "10 Lesson", null),
  DashBoardCategoriesModels("F", "Flutter", "11 Lesson", null),
  DashBoardCategoriesModels("H", "HTML", "8 Lesson", null),
  DashBoardCategoriesModels("K", "Kotlin", "20 Lesson", null),
  DashBoardCategoriesModels("P", "Python", "100 Lesson", null),
];

}