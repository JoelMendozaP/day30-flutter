import 'package:day30/Routine/ui/widgets/cards_routine.dart';
import 'package:day30/Widgets/widgets/appbar_cpath.dart';
import 'package:day30/Widgets/widgets/title_main.dart';
import 'package:flutter/material.dart';
class RoutineScreen extends StatefulWidget {
  @override
  _RoutineScreenState createState() => _RoutineScreenState();
}

class _RoutineScreenState extends State<RoutineScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF161920),
      body: Container(
        margin: EdgeInsets.only(bottom: 5.0),
        child: Column(
          children: <Widget>[
            _appbar(),
            CardsRountine()
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
      child: TitleMain(text: 'Rutinas'),
    );
  }
}