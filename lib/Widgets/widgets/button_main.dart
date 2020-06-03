import 'package:day30/Widgets/widgets/global_variables.dart';
import 'package:flutter/material.dart';
class ButtonMain extends StatefulWidget {

  // declaracion
  final String text;
  final VoidCallback onPressed;
  double width = 0.0;
  double height = 0.0;
  // constructor
  ButtonMain({Key key, @required this.text, @required this.onPressed, this.height, this.width});

  @override
  _ButtonMainState createState() => _ButtonMainState();
}

class _ButtonMainState extends State<ButtonMain> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: colorPrimario,
        ),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}