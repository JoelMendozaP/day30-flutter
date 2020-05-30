import 'package:day30/User/bloc/bloc_user.dart';
import 'package:day30/User/model/user.dart';
import 'package:day30/User/ui/widgets/user_info.dart';
import 'package:day30/Widgets/widgets/appbar_cpath.dart';
import 'package:day30/Widgets/widgets/button_main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  UserBloc userBloc;
  User user;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of<UserBloc>(context);
    
    return StreamBuilder(
      stream: userBloc.streamFirebase,
      builder: (BuildContext context, AsyncSnapshot snapshot){
        switch(snapshot.connectionState){
          case ConnectionState.waiting:
              return CircularProgressIndicator();
          case ConnectionState.none:
              return CircularProgressIndicator();
          case ConnectionState.active:
              return showAccount(snapshot);
          case ConnectionState.done:
              return showAccount(snapshot);
        } 
      },
    );
  }
  
  Widget showAccount(AsyncSnapshot<FirebaseUser> snapshot){
    if(!snapshot.hasData || snapshot.hasError){
      return Scaffold(
      backgroundColor: Color(0xFF161920),
      body: Stack(
        children: <Widget>[
          Cpath(height: 300, image: 'assets/img/logo1.png'),
          Column(
            children: <Widget>[
              CircularProgressIndicator(),
              Text('No se pudo cargar la informacion. Haz login')
            ],
          ),
        ],
      ),
    );
    }else{
      user = User(uid: snapshot.data.providerId, name: snapshot.data.displayName, email: snapshot.data.email, photoURL: snapshot.data.photoUrl);
      return Scaffold(
      backgroundColor: Color(0xFF161920),
      body: Stack(
        children: <Widget>[
          Cpath(height: 300, image: 'assets/img/logo1.png'),
          _userInfo(),
          _signOff()
        ],
      ),
    );
    }
  }
  Widget _userInfo() {
    return Align(
      alignment: Alignment.center + Alignment(0, -0.2),
      child: UserInf(user),
    );
  }
  Widget _signOff() {
    return Align(
      alignment: Alignment.bottomCenter + Alignment(0, -0.1) ,
      child: ButtonMain(
        text: 'Cerrar Sesión', 
        onPressed: (){
          userBloc.signOut();
        },
        width: 200.0, 
        height: 60.0,
      ),
    );
  }

}