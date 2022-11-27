import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('my  first app'),
          centerTitle: true, // to pur title in center
        ),
        body: const Center(
          child: Text('Helloo Eslam Ghazy'),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: Container(height: 50.0),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          backgroundColor: Colors.green,
          child: const Icon(Icons.navigation), // Text('click')
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    ));

int f() {
  return 5;
}
