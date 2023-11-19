import 'package:fitness/constants/colors.dart';
import 'package:flutter/material.dart';

class Graph extends StatelessWidget {
  const Graph({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        height: 280,
        color: iconColor,
        child: Container(),
      ),
    );
  }
}
