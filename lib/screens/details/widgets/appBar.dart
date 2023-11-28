import 'package:fitness/constants/colors.dart';
import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AppBar appBar;
  const MainAppBar({
    super.key,
    required this.appBar,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios,
          size: 16,
          color: backgroundColor,
        ),
        onPressed: () {},
      ),
      title: const Text(
        "Activity",
        style: TextStyle(
            color: backgroundColor, fontSize: 16, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      actions: [
        Stack(children: [
          TextButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              foregroundColor: warningColor,
              backgroundColor: const Color(0xffffe6da),
              padding: const EdgeInsets.all(6),
              maximumSize: const Size(35, 35),
              minimumSize: const Size(35, 35),
              shape: const CircleBorder(),
            ),
            child: const Icon(
              Icons.notifications,
              size: 24,
            ),
          ),
          Positioned(
            top: 5,
            right: 5,
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                "10",
                style: TextStyle(
                  color: secondaryColor,
                  fontSize: 10,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ]),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
