import 'package:fitness/constants/colors.dart';
import 'package:fitness/widgets/helpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dates extends StatelessWidget {
  const Dates({super.key});

  @override
  Widget build(BuildContext context) {
    List<DateBox> dateBoxes = [];
    // DateTime date = DateTime.parse("2023-11-26");
    DateTime date = DateTime.now();
    for (int i = 0; i < 6; i++) {
      dateBoxes.add(DateBox(
        date: date,
        active: i == 0,
      ));
      date = date.add(const Duration(days: 1));
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: dateBoxes,
        ),
      ),
    );
  }
}

class DateBox extends StatelessWidget {
  final bool active;
  final DateTime date;

  const DateBox({super.key, this.active = false, required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 70,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        gradient: active
            ? const LinearGradient(colors: [
                Color(0xff92e2ff),
                Color(0xff1ebdf8),
              ], begin: Alignment.topCenter)
            : null,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color(0xffe1e1e1),
        ),
      ),
      child: DefaultTextStyle.merge(
        style: active
            ? const TextStyle(color: secondaryColor)
            : const TextStyle(color: backgroundColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              daysOfWeek[date.weekday]!,
              style: TextStyle(
                fontSize: 12,
                fontWeight: active ? FontWeight.bold : FontWeight.w500,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              date.day.toString().padLeft(2, '0'),
              style: const TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
