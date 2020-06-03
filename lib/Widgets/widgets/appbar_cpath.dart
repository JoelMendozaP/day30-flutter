import 'package:day30/Widgets/widgets/global_variables.dart';
import 'package:flutter/material.dart';

class Cpath extends StatefulWidget {

  // declaracion
  final String image;
  final double height;
  // constructor
  Cpath({Key key, @required this.height, @required this.image});

  @override
  _CpathState createState() => _CpathState();
}

class _CpathState extends State<Cpath> {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: Myclipper(),
      child: Container(
        width: double.infinity,
        height: widget.height,
        color: blancoSecundario,
        child: Center(
            child: Container(
              decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(widget.image))
              ),
        )),
      ),
    );
  }
}

class Myclipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 2, size.height - 50, size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
