import 'package:fitness/constants/colors.dart';
import 'package:fitness/models/recentActivity.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecentActivities extends StatelessWidget {
  const RecentActivities({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              child: Text(
                "Recent Activity",
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: recentActivity.length,
                itemBuilder: (context, index) => ActivityItem(
                  activity: recentActivity[index],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ActivityItem extends StatelessWidget {
  final RecentActivity activity;
  const ActivityItem({Key? key, required this.activity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/details', arguments: activity);
      },
      child: Container(
        height: 60,
        margin: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xffe1e1e1),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: DefaultTextStyle.merge(
          style: TextStyle(
            color: Get.isDarkMode ? secondaryColor : backgroundColor,
            fontSize: 16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    padding: const EdgeInsets.all(3),
                    decoration: const BoxDecoration(
                      color: Color(0xffcff2ff),
                      shape: BoxShape.circle,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: activity.image,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(activity.title),
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.timer,
                    size: 12,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    activity.time,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.wb_sunny_outlined,
                    size: 14,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(activity.cals),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
