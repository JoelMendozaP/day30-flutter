// import 'package:day30/Routine/ui/screens/home.dart';
// import 'package:day30/User/ui/screens/register.dart';
import 'package:day30/User/ui/screens/sing_in.dart';
// import 'package:day30/User/ui/screens/sing_in.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() { 
    super.initState();
    
    _mockCheckForSession().then(
      (status){
        if(status) {
          _navigateToLogin();
        }
      }
    );
  }

  Future<bool> _mockCheckForSession() async {
    await Future.delayed(Duration(milliseconds: 5000),(){});
    return true;
  }

  void _navigateToLogin(){
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (BuildContext context) => SingIn()
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/img/logo1.png'))
        ),
      )
    );
  }
}