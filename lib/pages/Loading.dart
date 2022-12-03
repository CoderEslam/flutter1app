import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter1app/services/world_time.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String time = "Loading";

  void setUpWordTime() async {
    WorldTime instance =
        WorldTime(location: 'Egypt', flag: 'Egypt.png', url: 'Africa/Cairo');
    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
    });
    // print(instance.time);
    setState(() {
      time = instance.time;
    });
  }

  @override
  void initState() {
    super.initState();
    print("initState fun run");
    setUpWordTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: const EdgeInsets.all(50.0), child: Text(time)),
    );
  }
}
