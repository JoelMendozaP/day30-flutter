import 'package:day30/Routine/ui/widgets/empty_list.dart';
import 'package:day30/Routine/ui/widgets/routines_advances.dart';
import 'package:day30/Widgets/widgets/appbar_cpath.dart';
import 'package:day30/Widgets/widgets/title_main.dart';
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
          _title(),
          _myRoutines(),
          // _emptyList()
        ],
      ),
    );
  }
  
  Widget _myRoutines() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: RoutinesAdvances(),
    );
  }
  Widget _title() {
    return Align(
      alignment: Alignment.topCenter + Alignment(0, 0.32),
      child: TitleMain(text: 'Rutinas'),
    );
  }
  Widget _emptyList() {
    return Align(
      alignment: Alignment.center,
      child: EmptyList(),
    );
  }
}