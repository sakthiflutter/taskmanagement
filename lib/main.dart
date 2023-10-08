import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thiranuitasksakthi/utils/theme.dart';
import 'package:thiranuitasksakthi/view/bottomnavigation.dart';
import 'package:thiranuitasksakthi/view/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: AppThemeData.appThemeData,
      home: BottomNavigator(),
    );
  }
}


