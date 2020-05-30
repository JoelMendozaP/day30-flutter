import 'package:day30/Routine/model/routine.dart';
import 'package:flutter/material.dart';

class User {
  final String uid;
  final String name;
  final String email;
  final String photoURL;
  final List<Routine> myRoutines;
  final List<Routine> myFavoriteRoutines;
  
  // MyRoutine  

  User({
    Key key,
    @required this.uid,
    @required this.name,
    @required this.email,
    @required this.photoURL,
    this.myRoutines,
    this.myFavoriteRoutines,
  });
}