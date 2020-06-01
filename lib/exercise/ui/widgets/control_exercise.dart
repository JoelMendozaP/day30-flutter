import 'package:day30/exercise/ui/widgets/button_control.dart';
import 'package:flutter/material.dart';
class ControlExercise extends StatefulWidget {
  @override
  _ControlExerciseState createState() => _ControlExerciseState();
}

class _ControlExerciseState extends State<ControlExercise> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190.0,
      margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 20.0),
      padding: EdgeInsets.only(top: 10.0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(blurRadius: 5.0)
        ],
        color: Color(0xFF3C3F47),
        borderRadius: BorderRadius.circular(20.0)
      ),
      child: Column(
        children: <Widget>[
          Text('Contador', style: TextStyle(color: Colors.white,fontSize: 20.0)),
          _progreso(),
          _cardC(),
        ],
      ),
    );
  }
  Widget _cardC() {
    return Container(
      height: 140,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ButtonControl(
            cont: Icon(
                    Icons.close, 
                    color: Colors.white
                  ),
            onPressed: (){},
            height: 50,
            width: 50,
          ),
          ButtonControl(
            cont: Icon(
                    Icons.pause, 
                    color: Colors.white
                  ),
            onPressed: (){},
            height: 50,
            width: 50,
          ),
          ButtonControl(
            cont: Icon(
                    Icons.navigate_next, 
                    color: Colors.white
                  ),
            onPressed: (){},
            height: 50,
            width: 50,
          ),
        ],
      ),
    );
  }
  Widget _progreso() {
    return Container(
      margin: EdgeInsets.only(top: 10.0,right: 30.0,left: 30.0),
      child: LinearProgressIndicator(
        value: 0.5,
        backgroundColor: Color(0xFF161920),
        valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFFF5A39)),
      ),
    );
  }
}