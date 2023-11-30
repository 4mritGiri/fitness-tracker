import 'package:fitness/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Stats extends StatelessWidget {
  const Stats({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            children: [
              Text(
                "Workout Stats",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                  color: Get.isDarkMode ? secondaryColor : backgroundColor,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              const Icon(
                Icons.pie_chart_rounded,
                size: 15,
                color: infoColor,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const InfoStat(
                icon: Icons.timer,
                iconBackground: Color(0xffe4e7ff),
                iconColor: Color(0xff535bed),
                label: "Time",
                time: "+5s",
                value: "30:34",
              ),
              const InfoStat(
                icon: Icons.favorite_border,
                iconBackground: Color(0xffffe4fb),
                iconColor: Color(0xffe11e6c),
                label: "Heart Rate",
                time: "+8s",
                value: "151bpm",
              ),
              InfoStat(
                icon: Icons.bolt,
                iconBackground: const Color(0xffd3d50f).withAlpha(38),
                iconColor: const Color(0xffd3d50f),
                label: "Energy",
                time: "+4s",
                value: "169kcal",
              ),
              const InfoStat(
                icon: Icons.speed,
                iconBackground: Color(0xffe4e7ff),
                iconColor: Color(0xff535bed),
                label: "Speed",
                time: "+2s",
                value: "5.4km/h",
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

class InfoStat extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Color iconBackground;
  final String time;
  final String label;
  final String value;

  const InfoStat({
    super.key,
    required this.icon,
    required this.iconBackground,
    required this.iconColor,
    required this.label,
    required this.time,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 110,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Get.isDarkMode ? backgroundColor : Colors.white,
          border: Border.all(
            color: const Color(0xffe1e1e1),
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(3, 3),
              blurRadius: 3,
            ),
          ]),
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              StatIcon(
                icon: icon,
                backgroundColor: iconBackground,
                iconColor: iconColor,
              ),
              Change(time: time),
            ],
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 10,
                    color: Get.isDarkMode ? secondaryColor : backgroundColor,
                  ),
                ),
                Text(
                  value,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: Get.isDarkMode ? secondaryColor : backgroundColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Change extends StatelessWidget {
  const Change({
    super.key,
    required this.time,
  });

  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 5),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        time,
        style: const TextStyle(
          fontSize: 10,
          color: Colors.white,
        ),
      ),
    );
  }
}

class StatIcon extends StatelessWidget {
  const StatIcon({
    super.key,
    required this.icon,
    required this.backgroundColor,
    required this.iconColor,
  });

  final IconData icon;
  final Color iconColor;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(
        icon,
        size: 15,
        color: iconColor,
      ),
    );
  }
}
