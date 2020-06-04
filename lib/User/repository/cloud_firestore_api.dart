import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:day30/Routine/model/routine.dart';
import 'package:day30/Routine/ui/widgets/card_routine.dart';
import 'package:day30/Routine/ui/widgets/routine_info.dart';
import 'package:day30/User/model/user.dart';
import 'package:day30/Widgets/widgets/global_variables.dart';
import 'package:day30/exercise/model/exercise.dart';
import 'package:day30/exercise/ui/widgets/exercise_info.dart';
import 'package:flutter/cupertino.dart';

class CloudFirestoreAPI {
  final String USERS = 'users';
  final String ROUTINES = 'routines';
  final String EXERCISES = 'exercises';

  final Firestore _db = Firestore.instance;
  void updateUserData(User user) async {
    DocumentReference ref = _db.collection(USERS).document(user.uid);
    return await ref.setData({
      'uid': user.uid,
      'name': user.name,
      'email': user.email,
      'photoURL': user.photoURL,
      'myPlaces': user.myRoutines,
      'myFavoriteRoutines': user.myFavoriteRoutines,
      'lastSignIn': DateTime.now(),
    }, merge: true);
  }

  List<CardRoutine> buildRoutines(List<DocumentSnapshot> routinesListSnapshot) {
    List<CardRoutine> cardRoutine = List<CardRoutine>();
    routinesListSnapshot.forEach((r) {
      cardRoutine.add(CardRoutine(
        routine: Routine
        (
          id: r.documentID,
          name: r.data['name'], 
          nivel: r.data['nivel'], 
          urlImage: r.data['urlImage'],
          exercises: r.data['exercises'],
          tiempo: r.data['tiempo'],
          duracion: r.data['duracion'],
        ),
      ));
    });
    return cardRoutine;
  }

  List<Widget> builExercises(List<DocumentSnapshot> exercisesListSnapshot,Routine addRoutine) {
    List<Widget> exerciseInfo = [];
    
    // List<ExerciseInfo> exerciseInfo = List<ExerciseInfo>();
    List lista = addRoutine.exercises;
    exerciseInfo.add(RoutineInfo(tiempo: addRoutine.tiempo, duration: addRoutine.duracion));
    int c=0;
    lista.forEach((element) {
      exercisesListSnapshot.forEach((e) {
        if(element.documentID==e.documentID){
        c=c+1;
        exerciseInfo.add(ExerciseInfo(
          exercise: Exercise(
            name: e.data['name'],
            photoURL: e.data['photoURL'],
            ),
            cont: c,
            total: lista.length,
          ));
        }
      });
    });
    return exerciseInfo;
  }
}