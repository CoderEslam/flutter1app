import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter1app/Image.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ExpandedW extends StatelessWidget {
  const ExpandedW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Row(
          children: [
            Expanded(flex: 3, child: Image.asset('assets/r.jpg')),
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.all(30),
                color: Colors.cyan,
                child: const Text("1"),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.all(30),
                color: Colors.amberAccent,
                child: const Text("2"),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.all(30),
                color: Colors.pinkAccent,
                child: const Text("3"),
              ),
            ),
          ],
        ),
        Text("EslamGhazy")
      ]),
    );
  }
}
