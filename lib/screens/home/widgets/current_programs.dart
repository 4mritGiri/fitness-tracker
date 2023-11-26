import 'package:fitness/constants/colors.dart';
import 'package:flutter/material.dart';

class CurrentPrograms extends StatelessWidget {
  const CurrentPrograms({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Current Programs",
                style: Theme.of(context).textTheme.headline1,
              ),
              Icon(Icons.arrow_forward_ios)
            ],
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 120,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (contex, index) {
                return Program();
              }),
        )
      ],
    );
  }
}

class Program extends StatelessWidget {
  const Program({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 200,
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          colorFilter: ColorFilter.mode(primaryColor, BlendMode.lighten),
          image: NetworkImage(
            'https://akfit.com/cdn/shop/articles/adobestock-275274164.jpg?v=1697480359&width=2000',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "Cardio",
            style: TextStyle(
              color: secondaryColor,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          Row(
            children: [
              Text(
                "220kal",
                style: TextStyle(color: secondaryColor),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.access_time_sharp,
                color: secondaryColor,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "20min",
                style: TextStyle(color: secondaryColor),
              ),
            ],
          )
        ],
      ),
    );
  }
}
