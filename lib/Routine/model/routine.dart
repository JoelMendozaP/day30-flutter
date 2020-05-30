// import 'package:day30/User/model/user.dart';

import 'package:flutter/material.dart';

class Routine {
  String id;
  String name;
  String description;
  String urlImage;
  int likes;
  // User userOwner;

  Routine({
    Key key,
    @required this.name,
    @required this.description,
    @required this.urlImage,
    this.likes,
  });
}