import 'package:fitness/constants/colors.dart';
import 'package:fitness/models/fitnessProgram.dart';
import 'package:flutter/material.dart';

class CurrentPrograms extends StatefulWidget {
  const CurrentPrograms({super.key});

  @override
  State<CurrentPrograms> createState() => _CurrentProgramsState();
}

class _CurrentProgramsState extends State<CurrentPrograms> {
  ProgramType active = fitnessProgram[0].type;

  void _changeProgram(ProgramType newType) {
    setState(() {
      active = newType;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Current Programs",
                style: Theme.of(context).textTheme.headline1,
              ),
              const Icon(Icons.arrow_forward_ios)
            ],
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 120,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: fitnessProgram.length,
            itemBuilder: (context, index) {
              return Program(
                program: fitnessProgram[index],
                active: fitnessProgram[index].type == active,
                onTap: _changeProgram,
              );
            },
          ),
        )
      ],
    );
  }
}

class Program extends StatelessWidget {
  final FitnessProgram program;
  final bool active;
  final Function(ProgramType) onTap;

  const Program({
    Key? key,
    required this.program,
    this.active = false,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(program.type);
      },
      child: Container(
        height: 100,
        width: 200,
        margin: const EdgeInsets.only(left: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
                active
                    ? primaryColor.withOpacity(.6)
                    : secondaryColor.withOpacity(.8),
                active ? BlendMode.multiply : BlendMode.lighten),
            image: program.image,
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: DefaultTextStyle.merge(
          style: TextStyle(
            color: active ? secondaryColor : backgroundColor,
            fontWeight: FontWeight.w500,
            fontSize: 12,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                program.name,
                style: const TextStyle(fontSize: 16),
              ),
              Row(
                children: [
                  Text(
                    program.cals,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.access_time_sharp,
                    size: 14,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    program.time,
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
