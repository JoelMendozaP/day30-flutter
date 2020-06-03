import 'package:day30/Widgets/widgets/global_variables.dart';
import 'package:flutter/material.dart';

class TitleMain extends StatefulWidget {

  // declaracion
  final String text;
  // constructor
  TitleMain({Key key, @required this.text});

  @override
  _TitleMainState createState() => _TitleMainState();
}

class _TitleMainState extends State<TitleMain> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 61.0,
        child: Column(
          children: <Widget>[
            _title(),
            _line()
          ],
        ),
      );
  }
  Widget _line() {
    return Container(
      // width: 270,
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      height: 1,
      color: Colors.white,
    );
  }
  Widget _title() {
    return Container(
        width: 230.0,
        height: 60.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black45,
              offset: Offset(0, -1),
              blurRadius: 8
            ),
          ]
        ),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
              fontSize: 17.0,
              fontWeight: FontWeight.bold,
              color: colorPrimario,
            ),
          ),
        ),
    );
  }
}