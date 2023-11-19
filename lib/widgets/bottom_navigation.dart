import 'package:fitness/constants/colors.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      color: secondaryColor,
      child: IconTheme(
        data: const IconThemeData(color: iconColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.add_chart),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            Transform.translate(
              offset: const Offset(0, -18),
              child: Container(
                padding: const EdgeInsets.only(
                    bottom: 10, left: 10, right: 10, top: 5),
                alignment: Alignment.center,
                transformAlignment: Alignment.center,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      colors: [
                        Color(0xff92e2ff),
                        Color(0xff1ebdf8),
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 9,
                        offset: Offset(0, 4),
                      ),
                    ]),
                child: IconButton(
                  icon: const Icon(
                    Icons.home,
                    color: secondaryColor,
                    size: 32,
                  ),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/');
                  },
                ),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.date_range),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                Navigator.pushNamed(context, '/details');
              },
            ),
          ],
        ),
      ),
    );
  }
}
