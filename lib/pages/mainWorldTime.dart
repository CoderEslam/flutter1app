import 'package:flutter/material.dart';
import 'package:flutter1app/pages/ChooseLocation.dart';
import 'package:flutter1app/pages/Home.dart';
import 'package:flutter1app/pages/Loading.dart';

/*
  * FlatButton → TextButton
  * RaisedButton → ElevatedButton
  * OutlineButton → OutlinedButton
  * ButtonTheme → TextButtonTheme, ElevatedButtonTheme, OutlineButtonTheme
  * */

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const WorldTime());
}

class WorldTime extends StatefulWidget {
  const WorldTime({Key? key}) : super(key: key);

  @override
  State<WorldTime> createState() => _WorldTimeState();
}

class _WorldTimeState extends State<WorldTime> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/', routes: {
      '/': (context) => const Loading(),
      '/home': (context) => const Home(),
      '/location': (context) => const ChooseLocation(),
    });
  }
}
