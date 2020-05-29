import 'package:day30/Widgets/widgets/appbar_cpath.dart';
import 'package:flutter/material.dart';
class MyRoutineScreen extends StatefulWidget {
  @override
  _MyRoutineScreenState createState() => _MyRoutineScreenState();
}

class _MyRoutineScreenState extends State<MyRoutineScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF161920),
      body: Stack(
        children: <Widget>[
          Cpath(height: 150, image: 'assets/img/logo2.png'),
        ],
      ),
    );
  }
}