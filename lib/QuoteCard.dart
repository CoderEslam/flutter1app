import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter1app/HoverBuilder.dart';
import 'package:flutter1app/QuoteCard.dart';
import 'package:flutter1app/Quotes.dart';
import 'package:fluttertoast/fluttertoast.dart';

class QuoteCard extends StatelessWidget {
  QuoteCard({required this.quote, required this.delete, super.key});

  Quote quote;
  final VoidCallback delete;

  @override
  Widget build(BuildContext context) {
    return Card(
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
            ),
            const SizedBox(
              height: 8.0,
            ),
            TextButton.icon(
              onPressed: delete ,
              icon: const Icon(
                Icons.delete,
                color: Colors.teal,
              ),
              label: HoverBuilder(builder: (isHovered) {
                return Text("Delete",
                    style: TextStyle(
                        color: isHovered ? Colors.green : Colors.black87,
                        fontSize: 10,
                        fontFamily: 'Poppins'));
              }),
            )
          ],
        ),
      ),
    );
  }
}

void ShowToast(String text) => {
      Fluttertoast.showToast(
          msg: text,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          textColor: Colors.white,
          fontSize: 16.0)
    };
