import 'package:day30/Widgets/widgets/appbar_cpath.dart';
import 'package:day30/Widgets/widgets/icon_back.dart';
import 'package:day30/Widgets/widgets/title_main.dart';
import 'package:day30/exercise/ui/widgets/control_exercise.dart';
import 'package:flutter/material.dart';
class TrainingScreen extends StatefulWidget {
  @override
  _TrainingScreenState createState() => _TrainingScreenState();
}

class _TrainingScreenState extends State<TrainingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF161920),
      body: Container(
        margin: EdgeInsets.only(bottom: 5.0),
        child: Column(
          children: <Widget>[
            _appbar(),
            _view()
          ],
        ),
      ),
    );
  }
  Widget _view(){
    return Container(
      height: MediaQuery.of(context).size.height - 230.0,
      child: Stack(
        children: <Widget>[
          _animation(),
          _control(),
        ],
      ),
    );
  }
  Widget _animation() {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 350,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0)
        ),
        margin: EdgeInsets.symmetric(vertical: 20.0),
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Text('Ejercicio 1', style: TextStyle(color: Color(0xFF3C3F47), fontSize: 25.0)),
            Text('Ejercicio 1 de 15'),
          ],
        ),
      ),
    );
  }
  Widget _control() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: ControlExercise(),
    );
  }
  Widget _appbar() {
    return Container(
      height: 165.0,
      child: Stack(
        children: <Widget>[
          Cpath(height: 150, image: 'assets/img/logo2.png'),
          _title(),
          _back()
        ],
      ),
    );
  }
  Widget _back() {
    return Align(
      alignment: Alignment.centerLeft,
      child: IconBack(),
    );
  }
  Widget _title() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: TitleMain(text: 'Rutinas 1'),
    );
  }
}