import 'package:day30/Widgets/widgets/global_variables.dart';
import 'package:flutter/material.dart';

class IconBack extends StatefulWidget {
  @override
  _IconBackState createState() => _IconBackState();
}

class _IconBackState extends State<IconBack> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        height: 45.0,
        width: 45.0,
        child: IconButton(
          icon: Icon(Icons.keyboard_arrow_left, color: negroPrimario,size: 45.0,), 
          onPressed: (){
            Navigator.pop(context);
          }
        ),
      ),
    );
  }
}