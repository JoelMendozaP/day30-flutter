import 'package:day30/Routine/ui/widgets/routine_advances.dart';
import 'package:flutter/material.dart';
class RoutinesAdvances extends StatefulWidget {
  
  @override
  _RoutinesAdvancesState createState() => _RoutinesAdvancesState();
}

class _RoutinesAdvancesState extends State<RoutinesAdvances> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 230.0,
      margin: EdgeInsets.only(bottom: 3.0),
      child: ListView(
        children: <Widget>[
          RoutineAdvances('assets/img/logo2.png', 'name'),
          RoutineAdvances('assets/img/logo2.png', 'name'),
          RoutineAdvances('assets/img/logo2.png', 'name'),
          RoutineAdvances('assets/img/logo2.png', 'name'),
          RoutineAdvances('assets/img/logo2.png', 'name'),
          RoutineAdvances('assets/img/logo2.png', 'name'),
          RoutineAdvances('assets/img/logo2.png', 'name'),
          RoutineAdvances('assets/img/logo2.png', 'name'),
        ],
      ),
    );
  }
}