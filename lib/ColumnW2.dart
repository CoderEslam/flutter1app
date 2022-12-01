import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter1app/Image.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ColumnW2 extends StatelessWidget {
  const ColumnW2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: Colors.deepPurple,
                  padding: const EdgeInsets.all(20.0),
                  margin: const EdgeInsets.only(
                      left: 0, right: 5, top: 0, bottom: 0),
                  child: const Text("Container"),
                ),
                Container(
                    color: Colors.red,
                    padding: const EdgeInsets.all(5.0),
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 0.0),
                    child: const IconButton(
                      icon: Icon(Icons.add),
                      onPressed: null,
                    )),
                Container(
                  padding: const EdgeInsets.all(5.0),
                  margin: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 0.0),
                  child: FloatingActionButton(
                      onPressed: () {
                        goToImagePage(context);
                      },
                      backgroundColor: Colors.yellow,
                      child: const Icon(
                        Icons.navigation,
                        color: Colors.indigo,
                      )),
                )
              ],
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  ShowToast("From Container 60");
                },
                child: Container(
                  color: Colors.deepPurple,
                  padding: const EdgeInsets.all(60.0),
                  child: const Text("Container 60"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.deepPurple,
                padding: const EdgeInsets.all(40.0),
                child: const Text("Container 40"),
              ),
            )
          ]),
    );
  }
}

void goToImagePage(BuildContext context) => {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const ImagePage()))
    };

void ShowToast(String text) => {
      Fluttertoast.showToast(
          msg: text.toString(),
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          textColor: Colors.white,
          fontSize: 16.0)
    };
