import 'package:fitness/constants/colors.dart';
import 'package:flutter/material.dart';

class Steps extends StatelessWidget {
  const Steps({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      color: Colors.white,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '2000',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: backgroundColor,
            ),
          ),
          Text(
            'steps',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: backgroundColor,
            ),
          ),
        ],
      ),
    );
  }
}
