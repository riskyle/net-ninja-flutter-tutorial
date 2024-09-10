import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' ;
import 'package:world_time/services/world_time.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time = '';

  void setUpWorldTime() async {
    WorldTime instance = WorldTime(location: 'Manila', flag: "philippines.png", url:"Asia/Manila");
    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
    });
  }

  @override
  void initState() {
    super.initState();
    setUpWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Text("loading"),
          ),
        );
  }
}
