import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('my  first app'),
          centerTitle: true, // to pur title in center
          backgroundColor: Colors.yellow,
        ),
        body: const Center(
          child: Text(
            'Hello Eslam Ghazy',
            style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
                color: Colors.grey,
                fontFamily: 'india'),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: Container(height: 50.0),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
            Fluttertoast.showToast(
                msg: "This is a Toast message",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
                textColor: Colors.white,
                fontSize: 16.0);
          },
          backgroundColor: Colors.yellow,
          child: const Icon(Icons.navigation), // Text('click')
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      ),
    ));

int f() {
  return 5;
}
