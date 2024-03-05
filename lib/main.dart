import 'package:flutter/material.dart';
import 'package:meditation_app/ActivityView/Activity_view.dart';
import 'package:meditation_app/ExploreView/explore_view.dart';
import 'package:meditation_app/HomeView/HomeBar.dart';
import 'package:meditation_app/HomeView/homeview.dart';

void main() {
  runApp(const MaterialApp(
    home: MeditationApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MeditationApp extends StatelessWidget {
  const MeditationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const HomeBar();
  }
}
