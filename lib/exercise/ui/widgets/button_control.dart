import 'package:flutter/material.dart';
class ButtonControl extends StatefulWidget {
  // declaracion
  final Widget cont;
  final VoidCallback onPressed;
  double width = 0.0;
  double height = 0.0;
  // constructor
  ButtonControl({Key key, @required this.cont, @required this.onPressed, this.height, this.width});

  @override
  _ButtonControlState createState() => _ButtonControlState();
}

class _ButtonControlState extends State<ButtonControl> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Color(0xFFFF5A39),
        ),
        child: Center(
          child: widget.cont
        ),
      ),
    );
  }
}