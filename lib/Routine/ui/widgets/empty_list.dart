import 'package:day30/Widgets/widgets/button_main.dart';
import 'package:flutter/material.dart';

class EmptyList extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Container(
      height: 130.0,
      width: 200.0,
      child: Column(
        children: <Widget>[
          Text('Aun no tienes rutinas agrega una!', 
            style: TextStyle(color: Colors.white, fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          ButtonMain(
            text: 'Rutinas',
            onPressed: () {},
            width: 200.0,
            height: 60.0,
          ),
          // Slider(
          //   value: 50.0,
          //   max: 100.0,
          //   min: 0.0,
          //   inactiveColor: Colors.white,
          //   activeColor: colorPrimario,
          //   onChanged: (val){},
          // )
        ],
      ),
    );
  }
}