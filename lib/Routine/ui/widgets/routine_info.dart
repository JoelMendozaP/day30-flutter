import 'package:day30/Widgets/widgets/global_variables.dart';
import 'package:flutter/material.dart';
class RoutineInfo extends StatelessWidget {
  final int tiempo;
  final int duration;
  RoutineInfo({Key key,@required this.tiempo,@required this.duration});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width,
      child: Column(
        children: <Widget>[
          _cardInfo(this.tiempo,this.duration, context),
          _text('EJERCICIOS DIA 1', colorPrimario)
        ],
      ),
      
    );
  }
  Widget _cardInfo(int tiempo, int duration, BuildContext context){
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.all(20.0),
      // color: negroSecundario,
      decoration: BoxDecoration(
        color: negroSecundario,
        borderRadius: BorderRadius.circular(5.0)
      ),
      child: Column(
        children: <Widget>[
          _text('Tiempo Total: $tiempo minutos', Colors.white),
          _text('Duración: $duration dias', Colors.white),
        ],
      ),
    );
  }
  Widget _text(String txt, Color col){
    return Container(
      child: Text(
        txt, style: TextStyle(
          color: col,
          fontSize: 16.0
        ),
      ),
    );
  }
}