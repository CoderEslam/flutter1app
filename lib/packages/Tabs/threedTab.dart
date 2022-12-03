import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThreedTab extends StatefulWidget {
  const ThreedTab({Key? key}) : super(key: key);

  @override
  State<ThreedTab> createState() => _ThreedTabState();
}

class _ThreedTabState extends State<ThreedTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Threed"),
      ),
      body: Text("Threed"),
    );
  }
}
