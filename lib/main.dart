import 'package:flutter/material.dart';
import 'package:flutter1app/Home.dart';


/*
  * FlatButton → TextButton
  * RaisedButton → ElevatedButton
  * OutlineButton → OutlinedButton
  * ButtonTheme → TextButtonTheme, ElevatedButtonTheme, OutlineButtonTheme
  * */

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MaterialApp(home: Home()));
}
