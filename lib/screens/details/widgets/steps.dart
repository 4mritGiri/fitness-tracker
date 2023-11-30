import 'package:fitness/constants/colors.dart';
import 'package:fitness/widgets/helpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Steps extends StatelessWidget {
  const Steps({super.key});

  @override
  Widget build(BuildContext context) {
    String steps = formatNumber(randBetween(3000, 8000));
    // String steps = formatNepNumber(randBetween(300000, 8000000));
    return DefaultTextStyle.merge(
      style: TextStyle(
        color: Get.isDarkMode ? secondaryColor : backgroundColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              steps,
              style: const TextStyle(
                fontSize: 33,
                fontWeight: FontWeight.w900,
              ),
            ),
            const Text(
              'Total Steps',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
