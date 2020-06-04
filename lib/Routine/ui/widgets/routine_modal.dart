import 'package:day30/Routine/model/routine.dart';
import 'package:day30/Routine/ui/screens/add_routine_screen.dart';
import 'package:day30/Widgets/widgets/global_variables.dart';
import 'package:flutter/material.dart';

class RoutineModal extends StatelessWidget {
  Routine routine;
  bool estado;
  RoutineModal(this.routine, this.estado);

  @override
  Widget build(BuildContext context) {
    String opc;
    Color col;
    IconData icon;
    if (this.estado) {
      opc = ' Agregar';
      col = Colors.green;
      icon = Icons.playlist_add;
    } else {
      opc = 'Eliminar';
      col = Colors.red[700];
      icon = Icons.delete_outline;
    }

    return Column(
      children: <Widget>[
        _text(routine.name), 
        SizedBox(height: 20.0,),
        _opt(opc, icon, col,context),
      ],
    );
  }

  Widget _text(String texto) {
    return Text(
      texto,
      style: TextStyle(
          color: blancoSecundario, fontSize: 18, fontWeight: FontWeight.bold),
    );
  }

  Widget _opt(String opcion, IconData ico, Color col, BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        _button(' Ver Rutina',Icons.play_circle_outline, blancoSecundario,
          (){
            Navigator.pop(context);
            Navigator.push(context,MaterialPageRoute(
                builder: (BuildContext context) => AddRoutineScreen(addRoutine: this.routine)));
          }
        ),
        _button(opcion, ico, col,
          (){
            Navigator.pop(context);
          }
        ),
      ],
    );
  }

  Widget _button(String op, IconData icon, Color color, VoidCallback onPressed) {
    return OutlineButton(
      borderSide: BorderSide(width: 2.0, color: color),
      shape: StadiumBorder(),
      onPressed: onPressed,
      color: color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Icon(icon, color: color),

          Text(op,
                style: TextStyle(
                  color: color)),
        ],
      ),
    );
  }
}
