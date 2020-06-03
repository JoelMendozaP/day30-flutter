import 'package:day30/Routine/model/routine.dart';
import 'package:day30/Widgets/widgets/appbar_cpath.dart';
import 'package:day30/Widgets/widgets/button_main.dart';
import 'package:day30/Widgets/widgets/global_variables.dart';
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
      backgroundColor: negroPrimario,
      body: Container(
        margin: EdgeInsets.only(bottom: 5.0),
        child: Column(
          children: <Widget>[
            _appbar(widget.addRoutine.name),
            // Text(widget.addRoutine.id, style: TextStyle(color: blancoSecundario)),
            ExerciseList(widget.addRoutine),
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

  Widget _appbar(String titulo) {
    return Container(
      height: 165.0,
      child: Stack(
        children: <Widget>[
          Cpath(height: 150, image: 'assets/img/logo2.png'),
          _title(titulo),
          _back()
        ],
      ),
    );
  }
  Widget _title(String titulo) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: TitleMain(text: titulo),
    );
  }
  Widget _back() {
    return Align(
      alignment: Alignment.centerLeft,
      child: IconBack(),
    );
  }
}