import 'package:fitness/screens/details/widgets/dates.dart';
import 'package:fitness/screens/details/widgets/graph.dart';
import 'package:fitness/screens/details/widgets/info.dart';
import 'package:fitness/screens/details/widgets/stats.dart';
import 'package:fitness/screens/details/widgets/steps.dart';
import 'package:fitness/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Dates(),
          Steps(),
          Graph(),
          Info(),
          Stats(),
          BottomNavigation(),
        ],
      ),
    );
  }
}
