import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:day30/Routine/model/routine.dart';
import 'package:day30/Routine/ui/widgets/card_routine.dart';
import 'package:day30/User/model/user.dart';
import 'package:day30/User/repository/cloud_firestore_api.dart';
import 'package:flutter/material.dart';

class CloudFirestoreRepository {
  final _cloudFirestoreAPI = CloudFirestoreAPI();
  
  void updateUserDataFirestore(User user) => _cloudFirestoreAPI.updateUserData(user);

  List<CardRoutine> buildRoutines(List<DocumentSnapshot> routinesListSnapshot) 
  => _cloudFirestoreAPI.buildRoutines(routinesListSnapshot);

  List<Widget> builExercises(List<DocumentSnapshot> exercisesListSnapshot, Routine addRoutine)
  => _cloudFirestoreAPI.builExercises(exercisesListSnapshot, addRoutine);
}