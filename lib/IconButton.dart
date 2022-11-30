import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconButtom extends StatelessWidget {
  const IconButtom({Key? key}) : super(key: key);

  /*
  * FlatButton → TextButton
  * RaisedButton → ElevatedButton
  * OutlineButton → OutlinedButton
  * ButtonTheme → TextButtonTheme, ElevatedButtonTheme, OutlineButtonTheme
  * */

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Icon(
          Icons.airport_shuttle,
          color: Colors.blue,
          size: 50.0,
        ),
      ),
    );
  }
}
