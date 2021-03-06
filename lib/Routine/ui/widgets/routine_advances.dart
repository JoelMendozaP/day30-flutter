import 'package:day30/Widgets/widgets/global_variables.dart';
import 'package:flutter/material.dart';
class RoutineAdvances extends StatelessWidget {
  String urlImage;
  String name;
  RoutineAdvances(this.urlImage, this.name);
  
  @override
  Widget build(BuildContext context) {
    return _contenido(urlImage, name);
  }
  Widget _contenido(String url,String name){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      // padding: EdgeInsets.all(5.0),
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
    return Slider(
      value: 50.0,
      max: 100.0,
      min: 0.0,
      inactiveColor: Colors.white,
      activeColor: colorPrimario,
      onChanged: (val){},
    );

    // Container(
    //   margin: EdgeInsets.only(top: 10),
    //   child: LinearProgressIndicator(
    //     value: 0.5,
    //     backgroundColor: negroPrimario,
    //     valueColor: AlwaysStoppedAnimation<Color>(colorPrimario),
    //   ),
    // );
  }
  Widget _hora() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        _nroMensajes(),
        _text()
      ],
    );
  }
  Widget _text(){
    return Container(
      margin: EdgeInsets.only(bottom: 4.0),
      child: Text('5/10',style: TextStyle(fontSize: 14.0, color: Color(0xFFa3a5a7))),
    );
  }
  Widget _nroMensajes(){
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.all(Radius.circular(100))
      ),
      child: Center(child: Text('3',style: TextStyle(color: Colors.white))),
    );
  }
}