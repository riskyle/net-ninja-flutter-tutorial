import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location = "";
  String time = "";
  String flag = "";
  String url = "";
  bool isDayTime = true;

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    try {
      var urlHttps = Uri.https("worldtimeapi.org", "api/timezone/$url");
      Response response = await get(urlHttps);

      Map data = jsonDecode(response.body);

      String datetime = data["datetime"];
      String offset = data["utc_offset"].substring(1, 3);

      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      isDayTime = now.hour > 6 && now.hour < 20 ? true : false;

      time = DateFormat.jm().format(now);
    } catch (e) {
      if (kDebugMode) {
        print("Caught Error: $e");
      }
    }
  }
}
