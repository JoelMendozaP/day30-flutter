import 'package:day30/Routine/model/routine.dart';
import 'package:day30/Routine/ui/screens/add_routine_screen.dart';
import 'package:day30/Widgets/widgets/global_variables.dart';
import 'package:flutter/material.dart';

class CardRoutine extends StatelessWidget {
  final Routine routine;
  double topM=10.0;
  CardRoutine({Key key,@required this.routine, this.topM});
  @override
  Widget build(BuildContext context) {
    return _contenido(routine.urlImage, routine.name,context);
  }
  
  Widget _contenido(String url,String name,BuildContext context){
    return RaisedButton(
      padding: EdgeInsets.all(0),
      color: Colors.transparent,
      onPressed: (){
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (BuildContext context) => AddRoutineScreen())
        );
      },
      child: Container(
        // margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        margin:  EdgeInsets.only(top: topM, bottom: 10.0, left: 20.0, right: 20.0),
        padding: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: negroSecundario,
          borderRadius: BorderRadius.circular(5.0)
        ),
        child: ListTile(
            leading: _img(url),
            title: _userName(name),
            subtitle: _detalle(),
            enabled: true,
            trailing: _hora(),
        ),
      ),
    );
  }
  Widget _img(String url) {
    return Container(
      width: 55.0,
      height: 55.0,
      decoration: BoxDecoration(
          border: Border.all(
              color: Colors.white,
              width: 2.0,
              style: BorderStyle.solid
          ),
          shape: BoxShape.circle,
          image: DecorationImage(
              // colorFilter: ColorFilter.mode(Colors.orange, BlendMode.colorBurn),
              fit: BoxFit.cover, image: AssetImage(url))),
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
  Widget _detalle() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Text(
        'Lorem Ipsum is simply dum...',
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 16.0, color: Color(0xFFa3a5a7)),
      ),
    );
  }
  Widget _hora() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // Text('10:59',style: TextStyle(fontSize: 12.0, color: Color(0xFFa3a5a7))),
        _nroMensajes()
      ],
    );
  }
  Widget _nroMensajes(){
    return Container(
      width: 25,
      height: 25,
      //margin: EdgeInsets.only(top: 18),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.all(Radius.circular(100))
      ),
      child: Center(child: Text('3',style: TextStyle(color: Colors.white))),
    );
  }
}