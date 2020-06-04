import 'package:cached_network_image/cached_network_image.dart';
import 'package:day30/Routine/model/routine.dart';
import 'package:day30/Routine/ui/screens/add_routine_screen.dart';
import 'package:day30/Routine/ui/widgets/routine_modal.dart';
import 'package:day30/Widgets/widgets/global_variables.dart';
import 'package:flutter/material.dart';

class CardRoutine extends StatefulWidget {
  final Routine routine;
  CardRoutine({Key key, @required this.routine});
  @override
  _CardRoutineState createState() => _CardRoutineState();
}

class _CardRoutineState extends State<CardRoutine> {
  @override
  Widget build(BuildContext context) {
    return _contenido(widget.routine.urlImage, widget.routine.name, widget.routine.nivel, context);
  }
  Widget _contenido(
      String url, String name, String nivel, BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
          color: negroSecundario, borderRadius: BorderRadius.circular(5.0)),
      child: ListTile(
        leading: _img(url),
        title: _userName(name),
        subtitle: _detalle(nivel),
        enabled: true,
        isThreeLine: true,
        trailing: _adiconar(),
        onTap:() {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => AddRoutineScreen(addRoutine: this.widget.routine)
            )
          );
        },
      ),
    );
  }

  Widget _img(String img) {
    return Container(
      padding: EdgeInsets.all(10.0),
      width: 60.0,
      height: 60.0,
      decoration: BoxDecoration(
        color: blancoSecundario,
        border: Border.all(
            color: Colors.white, width: 2.0, style: BorderStyle.solid),
        shape: BoxShape.circle,
      ),
      child: CachedNetworkImage(
        colorBlendMode: BlendMode.modulate,
        color: colorPrimario,
        imageUrl: img,
        placeholder: (context, url) => Container(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ),
        errorWidget: (context, url, error) => Icon(Icons.error),
        fadeInCurve: Curves.easeIn,
        // fadeInDuration: Duration(milliseconds: 1000),
      ),
    );
  }

  Widget _userName(String name) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      child: Text(
        name,
        style: TextStyle(
          fontSize: 17.0,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _detalle(String nivel) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Text(
        'Nivel: $nivel',
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 16.0, color: Color(0xFFa3a5a7)),
      ),
    );
  }

  Widget _adiconar() {
    return Container(
      child: IconButton(
        icon: Icon(Icons.menu, color: Colors.white),
         onPressed: (){
           _onButtonPressed();
         },
      ),
    );
  }
  void _onButtonPressed() {
    showModalBottomSheet(
      context: context, 
      builder: (context){
        return Container(
          padding: EdgeInsets.all(20.0),
          height: 130,
          decoration: BoxDecoration(
            color: negroPrimario,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: RoutineModal(widget.routine, true),
        );
      });
  }  
}
