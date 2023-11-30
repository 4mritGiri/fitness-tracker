import 'package:fitness/screens/details/widgets/appBar.dart';
import 'package:fitness/screens/details/widgets/dates.dart';
import 'package:fitness/screens/details/widgets/graph.dart';
import 'package:fitness/screens/details/widgets/info.dart' hide Stats;
import 'package:fitness/screens/details/widgets/stats.dart';
import 'package:fitness/screens/details/widgets/steps.dart';
import 'package:fitness/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(appBar: AppBar()),
      body: Column(
        children: [
          const Dates(),
          const Steps(),
          const Graph(),
          const Info(),
          Divider(
            height: 30,
            color: Get.isDarkMode
                ? Colors.white.withOpacity(0.25)
                : Colors.black.withOpacity(0.1),
          ),
          const Stats(),
          const BottomNavigation(),
        ],
      ),
    );
  }
}
