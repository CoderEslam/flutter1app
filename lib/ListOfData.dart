import 'package:flutter/material.dart';
import 'package:flutter1app/ExpandedW.dart';
import 'package:flutter1app/IdCard.dart';
import 'package:flutter1app/IdCardful.dart';

void main() {
  runApp(const MaterialApp(home: ListOfData()));
}

class ListOfData extends StatefulWidget {
  const ListOfData({Key? key}) : super(key: key);

  @override
  State<ListOfData> createState() => _ListOfDataState();
}

class _ListOfDataState extends State<ListOfData> {
  List<String> quotes = [
    "be yourself ; everyone else is already taken",
    "I have nothing to declare except my genius",
    "The trust is rarely pure and cover simple"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("List"),
        backgroundColor: Colors.redAccent[700],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 5.0),
        child: Column(
          /*
          * arrow(=>) with return and bracts {} when it's need return data
          * arrow(=>) without return and bracts {} when it's need return data
          * arrow(=>) without or with return and bracts {} when it's not need return data
          * */
          children: quotes.map((e) => Text(e, style: styleText)).toList(),
        ),
      ),
    );
  }
}

const styleText = TextStyle(
    color: Colors.deepOrange,
    fontSize: 25,
    fontWeight: FontWeight.bold,
    fontFamily: 'India');
