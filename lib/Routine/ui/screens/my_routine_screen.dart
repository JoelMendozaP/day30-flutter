import 'package:day30/Routine/ui/widgets/empty_list.dart';
import 'package:day30/Routine/ui/widgets/routines_advances.dart';
import 'package:day30/Widgets/widgets/appbar_cpath.dart';
import 'package:day30/Widgets/widgets/global_variables.dart';
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
      backgroundColor: negroPrimario,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _appbar(),
            RoutinesAdvances(),
            // EmptyList(),
          ],
        ),
      ),
    );
  }
  Widget _appbar() {
    return Container(
      height: 165.0,
      child: Stack(
        children: <Widget>[
          Cpath(height: 150, image: 'assets/img/logo2.png'),
          _title()
        ],
      ),
    );
  }
  Widget _title() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: TitleMain(text: 'Tus Rutinas'),
    );
  }
}