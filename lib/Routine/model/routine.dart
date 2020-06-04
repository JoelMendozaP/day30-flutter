// import 'package:day30/User/model/user.dart';

import 'package:flutter/material.dart';

class Routine {
  String id;
  String name;
  String nivel;
  String urlImage;
  int tiempo;
  int duracion;
  List exercises;

  Routine({
    Key key,
    this.id,
    @required this.name,
    @required this.nivel,
    @required this.urlImage,
    @required this.tiempo,
    @required this.duracion,
    this.exercises
  });
}