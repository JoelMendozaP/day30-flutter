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
          icon: Icon(Icons.keyboard_arrow_left, color: Color(0xFF161920),size: 45.0,), 
          onPressed: (){
            Navigator.pop(context);
          }
        ),
      ),
    );
  }
}