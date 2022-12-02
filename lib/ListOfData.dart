import 'package:flutter/material.dart';
import 'package:flutter1app/ExpandedW.dart';
import 'package:flutter1app/IdCard.dart';
import 'package:flutter1app/IdCardful.dart';
import 'package:flutter1app/ListOfData.dart';
import 'package:flutter1app/QuoteCard.dart';
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

  Widget quoteTemplateToast(quote) {
    return GestureDetector(
      onTap: () {
        ShowToast(quote.author);
      },
      child: QuoteCard(quote),
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
          children: quotes.map((e) => quoteTemplateToast(e)).toList(),
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
