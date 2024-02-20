import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/data/models/lecturer/lecturer_base.dart';
import 'package:silvertimetable/logic/schedule_manager/schedule_manager_bloc.dart';

class NewLecturerSearchButton extends StatefulWidget {
  const NewLecturerSearchButton({super.key});

  @override
  State<NewLecturerSearchButton> createState() =>
      _NewLecturerSearchButtonState();
}

class _NewLecturerSearchButtonState extends State<NewLecturerSearchButton> {
  @override
  Widget build(BuildContext context) {
    // TODO: clean the code and fix showing suggestions and results when searching

    final List<LecturerBase> lecturers = context
        .read<ScheduleManagerBloc>()
        .state
        .schedulesIndex
        .values
        .whereType<LecturerBase>()
        .toList();

    return IconButton(
      onPressed: () {
        showSearch(
          context: context,
          delegate: NewLecturerSearchDelegate(lecturers),
        );
      },
      icon: const Icon(Icons.search),
    );
  }
}

class NewLecturerSearchDelegate extends SearchDelegate {
  NewLecturerSearchDelegate(this.lecturers);

  List<LecturerBase> lecturers;

  String getPresentedInfo(LecturerBase lecturer) =>
      '${lecturer.academicDegree} ${lecturer.firstName} ${lecturer.surname}';

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final List<LecturerBase> matched = [];
    for (final lecturer in lecturers) {
      if (getPresentedInfo(lecturer)
          .toLowerCase()
          .contains(query.toLowerCase())) {
        matched.add(lecturer);
      }
    }
    return ListView.builder(
      itemCount: matched.length,
      itemBuilder: (context, index) => ListTile(
        title: Text(lecturers[index].toString()),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final List<LecturerBase> matched = [];
    for (final lecturer in lecturers) {
      if (getPresentedInfo(lecturer)
          .toLowerCase()
          .contains(query.toLowerCase())) {
        matched.add(lecturer);
      }
    }
    return ListView.builder(
      itemCount: matched.length,
      itemBuilder: (context, index) => ListTile(
        title: Text(getPresentedInfo(lecturers[index])),
      ),
    );
  }
}