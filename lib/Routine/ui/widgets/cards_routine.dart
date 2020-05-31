import 'package:day30/Routine/model/routine.dart';
import 'package:day30/Routine/ui/widgets/card_routine.dart';
import 'package:flutter/material.dart';
class CardsRountine extends StatefulWidget {
  
  @override
  _CardsRountineState createState() => _CardsRountineState();
}

class _CardsRountineState extends State<CardsRountine> {
  Routine _routine = new Routine(name: 'routine1', description: 'rutina de piernas', urlImage: 'assets/img/logo2.png');
          
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 230.0,
      child: ListView(
        children: <Widget>[
          CardRoutine(routine: _routine,topM: 0.0),
          CardRoutine(routine: _routine,topM: 10.0),
          CardRoutine(routine: _routine,topM: 10.0),
          CardRoutine(routine: _routine,topM: 10.0),
          CardRoutine(routine: _routine,topM: 10.0),
          CardRoutine(routine: _routine,topM: 10.0),
          CardRoutine(routine: _routine,topM: 10.0),
          CardRoutine(routine: _routine,topM: 10.0),
        ],
      ),
    );
  }
}