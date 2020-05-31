import 'package:flutter/material.dart';
class ExerciseInfo extends StatefulWidget {
  @override
  _ExerciseInfoState createState() => _ExerciseInfoState();
}

class _ExerciseInfoState extends State<ExerciseInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.all(20.0),
      // padding: EdgeInsets.all(20.0),
      // color: Colors.white,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _Inf(),
          _image()
        ],
      ),
    );
  }
  Widget _image(){
    return Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/img/logo2.png')
        )
      ),
    );
  }
  Widget _Inf() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Ejercicio 1', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF161920), fontSize: 18.0)),
        SizedBox(height: 5.0,),
        Text('Tiempo', style: TextStyle(color: Color(0xFF161920), fontSize: 16.0)),
        Text('Cantidad', style: TextStyle(color: Color(0xFF161920), fontSize: 16.0)),
      ],
    );
  }
}