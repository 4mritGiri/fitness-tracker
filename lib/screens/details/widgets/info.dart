import 'package:fitness/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      // width: double.infinity,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Stats(
            value: '345',
            unit: 'kcal',
            label: 'Calories',
          ),
          Stats(
            value: '4.7',
            unit: 'Km',
            label: 'Distance',
          ),
          Stats(
            value: '2.5',
            unit: 'hrs',
            label: 'Hours',
          ),
        ],
      ),
    );
  }
}

class Stats extends StatelessWidget {
  final String value;
  final String unit;
  final String label;
  const Stats(
      {required this.value,
      required this.unit,
      required this.label,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(
              TextSpan(
                  text: value,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: Get.isDarkMode ? secondaryColor : backgroundColor,
                  ),
                  children: [
                    TextSpan(
                      text: "  $unit",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color:
                            Get.isDarkMode ? secondaryColor : backgroundColor,
                      ),
                    )
                  ]),
            ),
            Text(
              label,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Get.isDarkMode ? secondaryColor : backgroundColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
