import 'package:fitness/constants/colors.dart';
import 'package:fitness/themes/theme.provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppHeader extends StatelessWidget {
  final ThemeProvider themeProvider;
  const AppHeader({Key? key, required this.themeProvider}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime time = DateTime.now();
    String greeting;

    if (time.hour < 12) {
      greeting = "Good Morning";
    } else if (time.hour < 17) {
      greeting = "Good Afternoon";
    } else {
      greeting = "Good Evening";
    }
    // print(Get.isDarkMode ? "Dark Mode" : "Light Mode");
    return SizedBox(
      width: double.infinity,
      height: 160,
      child: Container(
        color: Get.isDarkMode ? backgroundColor : primaryColor,
        child: Stack(
          children: [
            const CustomPaint(
              painter: HeaderPainter(),
              size: Size(double.infinity, 200),
            ),
            Positioned(
              top: 20,
              left: 20,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  color: secondaryColor,
                ),
              ),
            ),
            Positioned(
              top: 20,
              left: 70,
              child: IconButton(
                onPressed: () {
                  themeProvider.switchTheme();
                },
                icon: themeProvider.icon,
              ),
            ),
            const Positioned(
              top: 34,
              right: 20,
              child: CircleAvatar(
                radius: 25,
                backgroundColor: secondaryColor,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      'https://avatars.githubusercontent.com/u/85377404?v=4'),
                ),
              ),
            ),
            Positioned(
              bottom: 25,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    greeting,
                    style: const TextStyle(
                      color: secondaryColor,
                    ),
                  ),
                  const Text(
                    "Amrit Giri",
                    style: TextStyle(
                      color: secondaryColor,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HeaderPainter extends CustomPainter {
  const HeaderPainter() : super();

  @override
  void paint(Canvas canvas, Size size) {
    Paint backColor = Paint()..color = const Color(0xff18b0e8);
    Paint circle = Paint()..color = Colors.white.withAlpha(40);

    canvas.drawRect(
        Rect.fromPoints(const Offset(0, 0), Offset(size.width, size.height)),
        backColor);
    canvas.drawCircle(Offset(size.width * .65, 10), 30, circle);
    canvas.drawCircle(Offset(size.width * .60, 120), 10, circle);
    canvas.drawCircle(const Offset(10, 10), 20, circle);
    canvas.drawCircle(Offset(size.width - 10, size.height - 10), 20, circle);
    canvas.drawCircle(Offset(size.width - 10, 5), 20, circle);
    canvas.drawCircle(Offset(10, size.height - 10), 20, circle);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
