import 'package:cached_network_image/cached_network_image.dart';
import 'package:day30/Widgets/widgets/global_variables.dart';
import 'package:day30/exercise/model/exercise.dart';
import 'package:flutter/material.dart';

class ExerciseInfo extends StatelessWidget {
  final Exercise exercise;
  final int cont;
  final int total;
  ExerciseInfo({Key key, @required this.exercise, this.cont, this.total,});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _inf(this.exercise.name, cont, total),
          _image(this.exercise.photoURL, context)
        ],
      ),
    );
  }
  Widget _image(String img, BuildContext context){
    return Container(
      width: 150.0,
      height: 120.0,
      child: Center(
        child: CachedNetworkImage(
          imageUrl: img,
          placeholder: (context, url) => Container(
            child: Center(child: CircularProgressIndicator(),),
          ),
          errorWidget: (context, url, error) => Icon(Icons.error),
          fadeInCurve: Curves.easeIn,
          // fadeInDuration: Duration(milliseconds: 1000),
        ),
      )
    );
  }
  Widget _inf(String name, int cont, int total) {
    return Container(
      width: 150.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(name, style: TextStyle(fontWeight: FontWeight.bold, color: negroPrimario, fontSize: 16.0)),
          SizedBox(height: 5.0,),
          Text('Tiempo: 30seg', style: TextStyle(color: negroPrimario, fontSize: 14.0)),
          Text('Cantidad: $cont/$total', style: TextStyle(color: negroPrimario, fontSize: 14.0)),
        ],
      ),
    );
  }
}