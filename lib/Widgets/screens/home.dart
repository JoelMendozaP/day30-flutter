import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:day30/Routine/ui/screens/my_routine_screen.dart';
import 'package:day30/Routine/ui/screens/routine_screen.dart';
import 'package:day30/User/bloc/bloc_user.dart';
import 'package:day30/User/ui/screens/account_screen.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _page = 0;

  // create all pages
  // final AddRoutineScreen _myRoutineScreen = AddRoutineScreen();
  // final TrainingScreen _myRoutineScreen = TrainingScreen();
  final MyRoutineScreen _myRoutineScreen = MyRoutineScreen();
  final RoutineScreen _routineScreen = RoutineScreen();
  final AccountScreen _accountScreen = AccountScreen();

  // Widget _showPage = new AddRoutineScreen();
  // Widget _showPage = new TrainingScreen();
  Widget _showPage = new MyRoutineScreen();
  Widget _pageChooser(int page) {
    switch (page){
      case 0: 
      return _myRoutineScreen;
      break;
      case 1: 
      return _routineScreen;
      break;
      case 2: 
      return BlocProvider<UserBloc> (
        child: _accountScreen, 
        bloc: UserBloc()
      );
      break;
      default:
      return new Container(
        child: Center(
          child: Text('Page no found'),
        ),
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: _page,
        backgroundColor: Color(0xFF161920),
        buttonBackgroundColor: Color(0xFF3C3F47),
        color: Color(0xFF3C3F47),
        height: 60.0,
        items: <Widget>[
          Icon(Icons.fitness_center, size: 20, color: Color(0xFFFF5A39),),
          Icon(Icons.event_note, size: 20, color: Color(0xFFFF5A39),),
          Icon(Icons.account_circle, size: 20, color: Color(0xFFFF5A39),),
        ],
        animationDuration: Duration(milliseconds: 300),
        onTap: (int tappedIndex){
          setState(() {
            _showPage = _pageChooser(tappedIndex);
          });
        },
      ),
      body: _showPage,
    );
  }
}