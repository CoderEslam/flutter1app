import 'dart:convert';

import 'package:flutter1app/pages/mainWorldTime.dart';
import 'package:http/http.dart';

class WorldTime {
  late String location; // location name for the UI
  late String time; // the time in that location
  late String flag; // url to an asset flag icon
  late String url; // location url for api endpoint

  WorldTime({required this.location, required this.flag, required this.url});

  // Asynchronous function
/*
* Future => mean's that is placeholder value until the function is complete it and tell the function will return data in future
* the future is a temporary placeholder value the kind of let's start now when an asynchronous function is complete
*/
  Future<void> getTime() async {
    // network request
    /*
    * await => wait this line of code until execute
    * */

    try {
      Response response =
          await get(Uri.parse("http://worldtimeapi.org/api/timezone/$url"));
      Map data = jsonDecode(response.body);

      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);

      // create DateTime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      // set time property
      time = now.toString();
    } catch (e) {
      print('Error = $e');
    }
  }
}
