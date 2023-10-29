import 'package:flutter/material.dart';
import 'package:psggw/class_card.dart';
import 'package:psggw/models/class.dart';
import 'package:psggw/data/lectures.dart';
import 'dart:async';

class Timeline extends StatefulWidget {
  const Timeline({Key? key}) : super(key: key);

  @override
  State<Timeline> createState() => _TimelineState();
}

Timer? timer;

class _TimelineState extends State<Timeline> {
  DateTime now = DateTime.now();

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(
      const Duration(seconds: 1),
      (Timer t) {
        setState(() {
          now = DateTime.now();
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        for (Class currentClass in lectures)
          ClassCard(
            currentClass,
            (currentClass.start.timeBetween(
                      Time(
                        hour: now.hour,
                        minute: now.minute,
                      ),
                    ) /
                    currentClass.start.timeBetween(currentClass.end))
                .clamp(0, 1),
          ),
      ],
    );
  }
}
