// import 'package:day30/User/model/user.dart';

import 'package:day30/exercise/model/exercise.dart';
import 'package:flutter/material.dart';

class Routine {
  String id;
  String name;
  String nivel;
  String urlImage;
  List exercises;

  Routine({
    Key key,
    this.id,
    @required this.name,
    @required this.nivel,
    @required this.urlImage,
    this.exercises
  });
}