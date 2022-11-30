import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaddingW extends StatelessWidget {
  const PaddingW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50.0),
        //we can's use margin here
        child: Text("Hello Islam"),
      ),
    );
  }
}
