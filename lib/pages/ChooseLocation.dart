import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter1app/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
/*  // Asynchronous function
  void getData() async {
    // simulate network request for username
    */ /*
    * await => wait this line of code until execute
    * */ /*
    String username = await Future.delayed(const Duration(seconds: 3), () {
      return "Eslam Ghazy";
    });

    String bio = await Future.delayed(const Duration(seconds: 3), () {
      return "Programming and playing";
    });
    print('$username and $bio');
  }*/

  List<WorldTime> locations = [
    WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png'),
    WorldTime(url: 'Europe/Berlin', location: 'Athens', flag: 'greece.png'),
    WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
    WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
    WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
    WorldTime(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
    WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
    WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
  ];

/*  List<WorldTime> locations = [
    WorldTime(url: 'Europe/London', location: 'London', flag: ''),
    WorldTime(url: 'Europe/Berlin', location: 'Athens', flag: ''),
    WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: ''),
    WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: ''),
    WorldTime(url: 'America/Chicago', location: 'Chicago', flag: ''),
    WorldTime(url: 'America/New_York', location: 'New York', flag: ''),
    WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: ''),
    WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: ''),
  ];*/

  void updateTime(index) async {
    WorldTime instance = locations[index];
    await instance.getTime();
    // navigate to home screen.
    Navigator.pop(context, {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDaytime': instance.isDaytime,
    });
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
      body: ListView.builder(
        itemCount: locations.length, // item iteration
        itemBuilder: (context, index) {
          // itemBuilder => build widget item equal to locations.length
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
            child: Card(
              child: ListTile(
                onTap: () {
                  updateTime(index); // to update location
                },
                title: Text(locations[index].location),
                leading: CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/${locations[index].flag}'),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
