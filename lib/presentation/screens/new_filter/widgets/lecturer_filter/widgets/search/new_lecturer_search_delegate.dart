import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/data/models/lecturer/lecturer_base.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/lecturer_filter/cubits/lecturer_picked/lecturer_picked_cubit.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/lecturer_filter/widgets/search/lecturer_search_tile.dart';

class NewLecturerSearchDelegate extends SearchDelegate {
  NewLecturerSearchDelegate({
    required this.lecturers,
    required this.bloc,
  });

  List<LecturerBase> lecturers;
  LecturerPickedCubit bloc;

  String lecturerInfoString(LecturerBase lecturer) =>
      '${lecturer.academicDegree} ${lecturer.firstName} ${lecturer.surname} ${lecturer.email}';

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
      if (lecturerInfoString(lecturer)
          .toLowerCase()
          .contains(query.toLowerCase())) {
        matched.add(lecturer);
      }
    }
    return ListView.builder(
      itemCount: matched.length,
      itemBuilder: (context, index) => BlocProvider.value(
        value: bloc,
        child: LecturerSearchTile(lecturer: matched[index]),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final List<LecturerBase> matched = [];
    for (final lecturer in lecturers) {
      if (lecturerInfoString(lecturer)
          .toLowerCase()
          .contains(query.toLowerCase())) {
        matched.add(lecturer);
      }
    }
    return ListView.builder(
      itemCount: matched.length,
      itemBuilder: (context, index) => BlocProvider.value(
        value: bloc,
        child: LecturerSearchTile(lecturer: matched[index]),
      ),
    );
  }
}
