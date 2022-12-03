import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FristTab extends StatefulWidget {
  // FristTab({required this.text, super.key});

  String? text = "";

  FristTab({this.text});

  @override
  State<FristTab> createState() => _FristTabState(text!);
}

class _FristTabState extends State<FristTab> {
  late String text;

  _FristTabState(this.text);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$text"),
      ),
      body: Text("$text"),
    );
  }
}
