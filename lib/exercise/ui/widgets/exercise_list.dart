import 'package:day30/Routine/model/routine.dart';
import 'package:day30/User/bloc/bloc_user.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class ExerciseList extends StatefulWidget {
  Routine addRoutine;
  ExerciseList(this.addRoutine);
  
  @override
  _ExerciseListState createState() => _ExerciseListState();
}

class _ExerciseListState extends State<ExerciseList> {
  UserBloc exerciseBloc;
  @override
  Widget build(BuildContext context) {
    exerciseBloc = BlocProvider.of<UserBloc>(context);
    // Exercise exercises=Exercise(id: 'sda', name: 'ej1', photoURL: 'assets/img/logo2.png');

    return Container(
      height: MediaQuery.of(context).size.height - 240.0,
      child: StreamBuilder(
        stream: exerciseBloc.exerciseStream,
        builder: (BuildContext context, AsyncSnapshot snapshot){
          switch(snapshot.connectionState){
          case ConnectionState.waiting:
          case ConnectionState.none:
            return Container(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          case ConnectionState.done:
          case ConnectionState.active:
          default:
            return ListView(
              children: exerciseBloc.builExercises(snapshot.data.documents, widget.addRoutine),
            );
          } 
        },
      ),
      
      // ListView(
      //   children: <Widget>[
      //     RoutineInfo(tduration: '30 Dias', ttotal: '20 min',),
      //     ExerciseInfo(exercise: exercises,cont: 1, total:13),
      //     ExerciseInfo(exercise: exercises,cont: 1, total:13),
      //     ExerciseInfo(exercise: exercises,cont: 1, total:13),

      //   ],
      // ),


    );
  }
}

