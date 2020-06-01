import 'package:day30/Routine/model/routine.dart';
import 'package:day30/Widgets/widgets/appbar_cpath.dart';
import 'package:day30/Widgets/widgets/button_main.dart';
import 'package:day30/Widgets/widgets/icon_back.dart';
import 'package:day30/Widgets/widgets/title_main.dart';
import 'package:day30/exercise/ui/screens/training_screen.dart';
import 'package:day30/exercise/ui/widgets/exercise_list.dart';
import 'package:flutter/material.dart';
class AddRoutineScreen extends StatefulWidget {

  Routine addRoutine;
  AddRoutineScreen({Key key, this.addRoutine});

  @override
  _AddRoutineScreenState createState() => _AddRoutineScreenState();
}
class _AddRoutineScreenState extends State<AddRoutineScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF161920),
      body: Container(
        margin: EdgeInsets.only(bottom: 5.0),
        child: Column(
          children: <Widget>[
            _appbar(),
            ExerciseList(),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child:  ButtonMain(
                text: 'Comenzar a Entrenar', 
                onPressed: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (BuildContext context) => TrainingScreen())
                  );
                },
                height: 50,)
            ),
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
          _title(),
          _back()
        ],
      ),
    );
  }
  Widget _title() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: TitleMain(text: 'Rutinas 1'),
    );
  }
  Widget _back() {
    return Align(
      alignment: Alignment.centerLeft,
      child: IconBack(),
    );
  }
}