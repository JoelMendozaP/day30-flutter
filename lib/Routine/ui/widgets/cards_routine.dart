import 'package:day30/Routine/model/routine.dart';
import 'package:day30/Routine/ui/widgets/card_routine.dart';
import 'package:day30/User/bloc/bloc_user.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
class CardsRountine extends StatefulWidget {
  
  @override
  _CardsRountineState createState() => _CardsRountineState();
}

class _CardsRountineState extends State<CardsRountine> {
  UserBloc userBloc;
  // Routine _routine = new Routine(name: 'routine1', nivel: 'rutina de piernas', urlImage: 'assets/img/logo2.png');
          
  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of<UserBloc>(context);
    return Container(
      height: MediaQuery.of(context).size.height - 230.0,
      child: StreamBuilder(
        stream: userBloc.routineStream,
        builder: (BuildContext context, AsyncSnapshot snapshot){
          switch(snapshot.connectionState){
          case ConnectionState.waiting:
          case ConnectionState.none:
            return Container(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          case ConnectionState.done:
          case ConnectionState.active:
          default:
            return ListView(
              children: userBloc.buildRoutines(snapshot.data.documents),
            );
          } 
        },
      ),
    );
  }
}

/*
ListView(
        children: <Widget>[
          CardRoutine(routine: _routine,topM: 0.0),
          CardRoutine(routine: _routine,topM: 10.0),
          CardRoutine(routine: _routine,topM: 10.0),
          CardRoutine(routine: _routine,topM: 10.0),
          CardRoutine(routine: _routine,topM: 10.0),
          CardRoutine(routine: _routine,topM: 10.0),
          CardRoutine(routine: _routine,topM: 10.0),
          CardRoutine(routine: _routine,topM: 10.0),
        ],
      ),
*/