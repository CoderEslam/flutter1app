import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class textButtom extends StatelessWidget {
  const textButtom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: TextButton(onPressed: null, child: Text("TextButton")),
      ),
    );
  }
}
