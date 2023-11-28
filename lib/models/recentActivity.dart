import 'package:flutter/material.dart';

class RecentActivity {
  final NetworkImage image;
  final String title;
  final String time;
  final String cals;

  const RecentActivity({
    required this.image,
    required this.title,
    required this.time,
    required this.cals,
  });
}

final List<RecentActivity> recentActivity = [
  const RecentActivity(
    image: NetworkImage(
        'https://footwearnews.com/wp-content/uploads/2022/04/Cushioned-Running-Shoe-Lead.png'),
    title: "Running",
    time: "30min",
    cals: "55kcal",
  ),
  const RecentActivity(
    image: NetworkImage(
        'https://swimjim.com/wp-content/uploads/2019/06/iStock-538342028.jpg'),
    title: "Swimming",
    time: "25min",
    cals: "4kcal",
  ),
  const RecentActivity(
    image: NetworkImage(
        'https://curated-uploads.imgix.net/AgAAAB0AmxMs-szyMsWvSiMgOrHN_Q.png'),
    title: "Cycling",
    time: "20min",
    cals: "30kcal",
  ),
  const RecentActivity(
    image: NetworkImage(
        'https://t3.ftcdn.net/jpg/01/09/20/40/360_F_109204081_CvSWBmG5pRGDwIERPX0Uv97YSn7dTdoV.jpg'),
    title: "Hiking",
    time: "50min",
    cals: "89kcal",
  ),
  const RecentActivity(
    image: NetworkImage(
        "https://c8.alamy.com/comp/2F75MM5/young-woman-riding-out-in-springtime-nature-2F75MM5.jpg"),
    title: "Ridding",
    time: "40min",
    cals: "30kcal",
  ),
  const RecentActivity(
    image: NetworkImage(
        "https://health.clevelandclinic.org/wp-content/uploads/sites/3/2020/12/person-walking-dog-1389949056-770x533-1-650x428.jpg"),
    title: "Walking",
    time: "30min",
    cals: "20kcal",
  ),
];
