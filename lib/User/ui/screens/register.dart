// import 'package:day30/Widgets/widgets/appbar_cpath.dart';
import 'package:day30/Widgets/widgets/button_main.dart';
import 'package:day30/Widgets/widgets/title_main.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  @override
  Widget build(BuildContext context) {
    return _signInGood();
  }
  Widget _signInGood() {
    return Scaffold(
      backgroundColor: Color(0xFF161920),
      body: Stack(
        children: <Widget>[
          // Cpath(),
          _title(),
          _button()
        ],
      ),
    );
  }

  Widget _title() {
    return Align(
      // alignment: Alignment.topLeft + Alignment(0, 0.2),
      alignment: Alignment.center + Alignment(0, -0.3),
      child: TitleMain(text: 'Iniciar Sesión'),
    );
  }
  Widget _button(){
    return Align(
      alignment: Alignment.center,
      child: ButtonMain(
        text: 'Iniciar Sesión', 
        onPressed: (){
          // userBloc.RegisterBloc().then((FirebaseUser user) => print('El ususario es ${user.displayName}'));
        }, 
        width: 200.0, 
        height: 60.0,
      ),
    );
  }
}
