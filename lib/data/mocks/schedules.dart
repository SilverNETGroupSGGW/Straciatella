import 'package:flutter/material.dart';
import 'package:psggw/data/models/classroom/classroom.dart';
import 'package:psggw/data/models/degree.dart';
import 'package:psggw/data/models/group/group.dart';
import 'package:psggw/data/models/lecturer/lecturer.dart';
import 'package:psggw/data/models/lesson/lesson.dart';
import 'package:psggw/data/models/schedule/schedule.dart';

final List<Schedule> schedules = [
  Schedule(
    id: "asdf1234",
    name: "Plan zajęć 2020/2021",
    year: 1,
    semester: 1,
    degree: Degree.doctor,
    groups: [
      Group(
        id: "asdf1234",
        name: "Grupa 1",
      )
    ],
    lessons: [
      Lesson(
        id: "asdf1234",
        name: "Przedmiot 1",
        lecturers: [
          Lecturer(
            id: "asdf1234",
            firstName: "Jan",
            surname: "Kowalski",
            degree: Degree.doctor,
            email: "jan@kowalki.com",
          ),
        ],
        classroom: Classroom(
          building: "A",
          floor: 1,
          id: "asdf1234",
          name: "A1",
        ),
        day: DayOfWeek.monday,
        time: TimeOfDay(hour: 8, minute: 0),
        duration: Duration(hours: 1, minutes: 30),
        groups: [
          Group(
            id: "asdf1234",
            name: "Grupa 1",
          )
        ],
      ),
      Lesson(
        id: "asdf1234",
        name: "Przedmiot 2",
        lecturers: [
          Lecturer(
            id: "asdf1234",
            firstName: "Jan",
            surname: "Kowalski",
            degree: Degree.doctor,
            email: "",
          ),
        ],
        classroom: Classroom(
          building: "A",
          floor: 1,
          id: "asdf1234",
          name: "A1",
        ),
        day: DayOfWeek.monday,
        time: TimeOfDay(hour: 10, minute: 0),
        duration: Duration(hours: 1, minutes: 30),
        groups: [
          Group(
            id: "asdf1234",
            name: "Grupa 1",
          )
        ],
      ),
      Lesson(
        id: "asdf1234",
        name: "Przedmiot 3",
        lecturers: [
          Lecturer(
            id: "asdf1234",
            firstName: "Jan",
            surname: "Kowalski",
            degree: Degree.doctor,
            email: "",
          ),
        ],
        classroom: Classroom(
          building: "A",
          floor: 1,
          id: "asdf1234",
          name: "A1",
        ),
        day: DayOfWeek.monday,
        time: TimeOfDay(hour: 12, minute: 0),
        duration: Duration(hours: 1, minutes: 30),
        groups: [
          Group(
            id: "asdf1234",
            name: "Grupa 1",
          )
        ],
      ),
      Lesson(
        id: "asdf1234",
        name: "Przedmiot 4",
        lecturers: [
          Lecturer(
            id: "asdf1234",
            firstName: "Jan",
            surname: "Kowalski",
            degree: Degree.doctor,
            email: "",
          ),
        ],
        classroom: Classroom(
          building: "A",
          floor: 1,
          id: "asdf1234",
          name: "A1",
        ),
        day: DayOfWeek.thursday,
        time: TimeOfDay(hour: 14, minute: 0),
        duration: Duration(hours: 1, minutes: 30),
        groups: [
          Group(
            id: "asdf1234",
            name: "Grupa 1",
          )
        ],
      ),
    ],
  )
];
