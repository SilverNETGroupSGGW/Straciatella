import 'package:flutter/material.dart';
import 'package:psggw/data/models/classroom/classroom.dart';
import 'package:psggw/data/models/degree.dart';
import 'package:psggw/data/models/group/group.dart';
import 'package:psggw/data/models/lecturer/lecturer.dart';
import 'package:psggw/data/models/lesson/lesson.dart';
import 'package:psggw/data/models/schedule/schedule.dart';

final List<Schedule> schedules = [
  Schedule(
    id: "1",
    name: "Schedule Name",
    year: 1,
    semester: 1,
    degree: Degree.bachelor,
    groups: [
      Group(
        id: "group 1 id",
        name: "group 1 name",
      ),
      Group(
        id: "group 2 id",
        name: "group 2 name",
      ),
    ],
    lessons: [
      Lesson(
        name: 'lesson 1 name',
        comment: 'lesson 1 comment',
        id: 'lesson 1 id',
        dayOfWeek: DayOfWeek.monday,
        classroom: Classroom(
          id: "1",
          name: "3/40",
          floor: 3,
          building: "34",
        ),
        duration: Duration(hours: 1, minutes: 30),
        startTime: TimeOfDay(hour: 8, minute: 0),
        groups: [
          Group(
            id: "group 1 id",
            name: "Group 1 name",
          )
        ],
        lecturers: [
          Lecturer(
            degree: Degree.master,
            email: "Lecturer 1 email",
            surname: "Lecturer 1 surname",
            id: "Lecturer 1 id",
            firstName: "Lecturer 1 name",
          ),
        ],
      ),
      Lesson(
        name: 'lesson 2 name',
        comment: 'lesson 2 comment',
        id: 'lesson 2 id',
        dayOfWeek: DayOfWeek.monday,
        classroom: Classroom(
          id: "2",
          name: "3/40",
          floor: 3,
          building: "34",
        ),
        duration: Duration(hours: 1, minutes: 30),
        startTime: TimeOfDay(hour: 10, minute: 0),
        groups: [
          Group(
            id: "group 2 id",
            name: "Group 2 name",
          )
        ],
        lecturers: [
          Lecturer(
            degree: Degree.master,
            email: "Lecturer 2 email",
            surname: "Lecturer 2 surname",
            id: "Lecturer 2 id",
            firstName: "Lecturer 2 name",
          ),
        ],
      ),
    ],
  ),
];
