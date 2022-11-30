import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter1app/Image.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ContainerW extends StatelessWidget {
  const ContainerW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(10.0,50.0,80.0,65.0),
        margin: const EdgeInsets.all(60.2),
        color: Colors.deepOrange,
        child: const Text("Hello"),
      ),
    );
  }
}
