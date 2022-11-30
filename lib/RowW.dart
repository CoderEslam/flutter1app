import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter1app/Image.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RowW extends StatelessWidget {
  const RowW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("Hello Eslam"),
        const Icon(Icons.account_circle_outlined),
        const ElevatedButton(
          onPressed: null,
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.orange),
              textStyle: MaterialStatePropertyAll(TextStyle(
                  color: Colors.black, fontSize: 20.6, fontFamily: 'India'))),
          child: Text("Button Click me"),
        ),
        Container(
          color: Colors.deepPurple,
          padding: const EdgeInsets.all(50.0),
          child: const Text("Container"),
        ),
      ],
    ));
  }
}
