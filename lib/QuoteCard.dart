import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter1app/Quotes.dart';

class QuoteCard extends StatelessWidget {
  QuoteCard(this.quote, {super.key});

  Quote quote;

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
            )
          ],
        ),
      ),
    );
  }
}
