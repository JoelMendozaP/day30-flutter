import 'package:day30/User/bloc/bloc_user.dart';
import 'package:day30/Widgets/screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Material App',
          initialRoute: 'splash',
          routes: {'splash': (context) => Splash()},
        ),
        bloc: UserBloc()
    );
  }
}