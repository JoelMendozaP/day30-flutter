import 'package:flutter/material.dart';

class SingIn extends StatefulWidget {
  @override
  _SingInState createState() => _SingInState();
}

class _SingInState extends State<SingIn> {
  @override
  Widget build(BuildContext context) {
    return _signInGood();
  }
  Widget _signInGood() {
    return Scaffold(
      backgroundColor: Color(0xFF161920),
      body: Stack(),
    );
  }
}