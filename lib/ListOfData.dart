import 'package:flutter/material.dart';
import 'package:flutter1app/ExpandedW.dart';
import 'package:flutter1app/IdCard.dart';
import 'package:flutter1app/IdCardful.dart';
import 'package:flutter1app/Quotes.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MaterialApp(home: ListOfData()));
}

class ListOfData extends StatefulWidget {
  const ListOfData({Key? key}) : super(key: key);

  @override
  State<ListOfData> createState() => _ListOfDataState();
}

class _ListOfDataState extends State<ListOfData> {
  List<Quote> quotes = [
    Quote(
        author: "Eslam", text: "be yourself ; everyone else is already taken"),
    Quote(text: "I have nothing to declare except my genius", author: "Alaa"),
    Quote(text: "The trust is rarely pure and cover simple", author: "Ghazy"),
  ];

  Widget quoteTemplate(quote) {
    return GestureDetector(
      onTap: () {
        ShowToast(quote.author);
      },
      child: Card(
        margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                quote.text,
                style: TextStyle(fontSize: 18, color: Colors.grey[600]),
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                quote.author,
                style: TextStyle(fontSize: 14, color: Colors.grey[800]),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("List"),
        centerTitle: true,
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
          children: quotes.map((e) => quoteTemplate(e)).toList(),
        ),
      ),
    );
  }
}

const styleText = TextStyle(
    color: Colors.deepOrange,
    fontSize: 20,
    fontWeight: FontWeight.bold,
    fontFamily: 'India');

void ShowToast(String text) => {
      Fluttertoast.showToast(
          msg: text,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          textColor: Colors.white,
          fontSize: 16.0)
    };
