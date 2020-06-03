import 'package:cached_network_image/cached_network_image.dart';
import 'package:day30/Routine/model/routine.dart';
import 'package:day30/Routine/ui/screens/add_routine_screen.dart';
import 'package:day30/Widgets/widgets/global_variables.dart';
import 'package:flutter/material.dart';

class CardRoutine extends StatelessWidget {
  final Routine routine;
  CardRoutine({Key key,@required this.routine});
  
  @override
  Widget build(BuildContext context) {
    return _contenido(routine.urlImage, routine.name,routine.nivel ,context);
  }
  
  Widget _contenido(String url,String name,String nivel ,BuildContext context){
    return RaisedButton(
      padding: EdgeInsets.all(0),
      elevation: 0,
      color: negroPrimario,
      onPressed: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (BuildContext context) => AddRoutineScreen(addRoutine: this.routine))
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        padding: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: negroSecundario,
          borderRadius: BorderRadius.circular(5.0)
        ),
        child: ListTile(
            leading: _img(url),
            title: _userName(name),
            subtitle: _detalle(nivel),
            enabled: true,
            trailing: _adiconar(),
        ),
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
              color: Colors.white,
              width: 2.0,
              style: BorderStyle.solid
          ),
          shape: BoxShape.circle,
      ),
      child: CachedNetworkImage(
          colorBlendMode: BlendMode.modulate,
          color: colorPrimario,
          imageUrl: img,
          placeholder: (context, url) => Container(
            child: Center(child: CircularProgressIndicator(),),
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
  Widget _adiconar(){
    return Container(
      width: 30,
      height: 30,
      margin: EdgeInsets.only(top: 10.0),
      decoration: BoxDecoration(
        color: colorPrimario,
        borderRadius: BorderRadius.all(Radius.circular(100))
      ),
      child: Center(child: Icon(Icons.add, color: Colors.white,)),
    );
  }
}