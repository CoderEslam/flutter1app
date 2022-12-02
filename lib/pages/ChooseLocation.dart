import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  @override
  void initState() {
    super.initState();
    print("initState fun run");
    getData();
  }

  int counter = 0;

  // Asynchronous function
  void getData() async {
    // simulate network request for username
    /*
    * await => wait this line of code until execute
    * */
    String username = await Future.delayed(const Duration(seconds: 3), () {
      return "Eslam Ghazy";
    });

    String bio = await Future.delayed(const Duration(seconds: 3), () {
      return "Programming and playing";
    });
    print('$username and $bio');
  }

  @override
  Widget build(BuildContext context) {
    print("build fun run");
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text('Choose Location screen'),
          centerTitle: true,
          elevation: 0,
        ),
        body: ElevatedButton(
          onPressed: () {
            setState(() {
              //  setState => is rerun build function again
              counter++;
            });
          },
          child: Text("counter is  $counter"),
        ));
  }
}
