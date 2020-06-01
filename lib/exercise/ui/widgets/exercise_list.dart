import 'package:day30/Routine/ui/widgets/routine_info.dart';
import 'package:day30/exercise/ui/widgets/exercise_info.dart';
import 'package:flutter/material.dart';

class ExerciseList extends StatefulWidget {
  @override
  _ExerciseListState createState() => _ExerciseListState();
}

class _ExerciseListState extends State<ExerciseList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 240.0,
      child: ListView(
        children: <Widget>[
          RoutineInfo(tduration: '30 Dias', ttotal: '20 min',),
          ExerciseInfo(),
          ExerciseInfo(),
          ExerciseInfo(),
          ExerciseInfo(),
          ExerciseInfo(),
          ExerciseInfo(),
        ],
      ),
    );
  }
}

