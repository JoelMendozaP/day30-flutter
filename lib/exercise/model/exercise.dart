import 'package:flutter/material.dart';

class Exercise {
  final String id;
  final String name;
  final String photoURL;
  
  // MyRoutine  

  Exercise({
    Key key,
    this.id,
    @required this.name,
    @required this.photoURL,
  });
}