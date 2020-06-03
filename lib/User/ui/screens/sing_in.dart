import 'package:day30/User/bloc/bloc_user.dart';
import 'package:day30/User/model/user.dart';
import 'package:day30/Widgets/screens/home.dart';
import 'package:day30/Widgets/widgets/appbar_cpath.dart';
import 'package:day30/Widgets/widgets/button_main.dart';
import 'package:day30/Widgets/widgets/global_variables.dart';
import 'package:day30/Widgets/widgets/title_main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class SingIn extends StatefulWidget {
  @override
  _SingInState createState() => _SingInState();
}

class _SingInState extends State<SingIn> {
  UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    return _handleCurrenSession();
  }

  Widget _handleCurrenSession() {
    return StreamBuilder(
        stream: userBloc.authStatus,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          //snapshot -- data - Object user
          if (!snapshot.hasData || snapshot.hasError) {
            return _signInGood();
          } else {
            return Home();
          }
        });
  }

  Widget _signInGood() {
    return Scaffold(
      backgroundColor: negroPrimario,
      body: Stack(
        children: <Widget>[
          Cpath(height: 300, image: 'assets/img/logo1.png'),
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

  Widget _button() {
    return Align(
      alignment: Alignment.center,
      child: ButtonMain(
        text: 'Iniciar Sesión',
        onPressed: () {
          userBloc.signOut();
          userBloc.SingInBloc().then((FirebaseUser user) {
            userBloc.updateUserData(User(
                uid: user.uid,
                name: user.displayName,
                email: user.email,
                photoURL: user.photoUrl));
          });
        },
        width: 200.0,
        height: 60.0,
      ),
    );
  }
}
