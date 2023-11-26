import 'package:fitness/screens/home/widgets/activity.dart';
import 'package:fitness/screens/home/widgets/current_programs.dart';
import 'package:fitness/screens/home/widgets/header.dart';
import 'package:fitness/themes/theme.provider.dart';
import 'package:fitness/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeProvider>(
      init: ThemeProvider(),
      builder: (themeProvider) => Scaffold(
        body: Column(
          children: [
            AppHeader(themeProvider: themeProvider),
            CurrentPrograms(),
            RecentActivities(),
            BottomNavigation(),
          ],
        ),
      ),
    );
  }
}
