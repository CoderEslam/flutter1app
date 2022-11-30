import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class elevatedButton extends StatelessWidget {
  const elevatedButton({Key? key}) : super(key: key);

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
        child: ElevatedButton(
          onPressed: null,
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.lightBlue),
              textStyle: MaterialStatePropertyAll(TextStyle(
                  inherit: true,
                  color: Colors.limeAccent,
                  fontSize: 50.0,
                  fontFamily: 'India'))),
          child: Text(
            "ClickMe",
          ),
        ),
      ),
    );
  }
}


