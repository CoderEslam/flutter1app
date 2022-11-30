import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter1app/ButtonsApp.dart';
import 'package:flutter1app/IconButton.dart';
import 'package:flutter1app/ContainerW.dart';
import 'package:flutter1app/Image.dart';
import 'package:flutter1app/PaddingW.dart';
import 'package:flutter1app/RowW.dart';
import 'package:flutter1app/ColumnW2.dart';
import 'package:flutter1app/elevatedButton.dart';
import 'package:flutter1app/textButton.dart';
import 'package:fluttertoast/fluttertoast.dart';

// hot reload => update everything in same time
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'MainActivity',
          style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 5.0,
              color: Colors.black,
              fontFamily: 'India'),
        ),
        centerTitle: true, // to pur title in center
        backgroundColor: Colors.yellow,
      ),
      body: const Center(
        child: ColumnW2(),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(height: 50.0),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
          /*Fluttertoast.showToast(
              msg: "This is a Toast message",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              textColor: Colors.white,
              fontSize: 16.0);*/
          // to open another Activity
          goToImagePage(context);
        },
        backgroundColor: Colors.yellow,
        child: const Icon(
          Icons.navigation,
          color: Colors.indigo,
        ), // Text('click')
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}

void goToImagePage(BuildContext context) => {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const ButtonsApp()))
    };
