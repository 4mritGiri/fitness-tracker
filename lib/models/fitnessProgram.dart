import 'package:flutter/material.dart';

enum ProgramType {
  cardio,
  barbel,
  dumbbell,
  kettlebell,
  bodyweight,
  machine,
  cable,
  band,
  other,
}

class FitnessProgram {
  // final AssetImage image;
  final NetworkImage image;
  final String name;
  final String cals;
  final String time;
  final ProgramType type;

  const FitnessProgram({
    required this.image,
    required this.name,
    required this.cals,
    required this.time,
    required this.type,
  });
}

final List<FitnessProgram> fitnessProgram = [
  const FitnessProgram(
    image: NetworkImage(
        "https://akfit.com/cdn/shop/articles/adobestock-275274164.jpg"),
    name: "Cardio",
    cals: "220kcal",
    time: "20min",
    type: ProgramType.cardio,
  ),
  const FitnessProgram(
    image: NetworkImage(
        "https://breakingmuscle.com/wp-content/uploads/2022/06/BarBend-Feature-Image-1200-x-675-2022-06-16T222420.084.jpg"),
    name: "Barbel Arm Lift",
    cals: "240kcal",
    time: "25min",
    type: ProgramType.barbel,
  ),
  const FitnessProgram(
    image: NetworkImage(
        "https://img.etimg.com/thumb/width-1200,height-900,imgsize-21208,resizemode-75,msid-102834065/top-trending-products/health-fitness/exercise-fitness/best-10-kg-dumbbell-sets-in-india-to-achieve-your-fitness-goals.jpg"),
    name: "Dumbbell",
    cals: "200kcal",
    time: "20min",
    type: ProgramType.dumbbell,
  ),
  const FitnessProgram(
    image: NetworkImage(
        "https://hips.hearstapps.com/hmg-prod/images/kettlebell-arm-exercises-1630508458.jpg"),
    name: "Kettlebell",
    cals: "200kcal",
    time: "20min",
    type: ProgramType.kettlebell,
  ),
  const FitnessProgram(
    image: NetworkImage(
        "https://www.mensjournal.com/.image/ar_16:9%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTk2MTM3MDYwMDY0MzcxODU3/spiderman.jpg"),
    name: "Bodyweight",
    cals: "200kcal",
    time: "20min",
    type: ProgramType.bodyweight,
  ),
  const FitnessProgram(
    image: NetworkImage(
        "https://atlantisstrength.com/app/uploads/2023/11/a7409190-1920x980.jpg"),
    name: "Machine",
    cals: "200kcal",
    time: "20min",
    type: ProgramType.machine,
  ),
  const FitnessProgram(
    image: NetworkImage(
        "https://www.dmoose.com/cdn/shop/articles/Feature-image_535c6f0b-08ae-4264-9c22-e1943b53013e.jpg"),
    name: "Cable",
    cals: "200kcal",
    time: "20min",
    type: ProgramType.cable,
  ),
  const FitnessProgram(
    image: NetworkImage(
        "https://www.muscleandfitness.com/wp-content/uploads/2017/06/resistance-band-shirtless-muscles-1280.jpg"),
    name: "Band",
    cals: "200kcal",
    time: "20min",
    type: ProgramType.band,
  ),
  const FitnessProgram(
    image: NetworkImage(
        "https://img.freepik.com/premium-vector/gym-people-set-young-man-women-engaged-sport-different-exercises-collection-flat-style-vector-illustration_198278-7429.jpg"),
    name: "Other",
    cals: "200kcal",
    time: "20min",
    type: ProgramType.other,
  ),
];
