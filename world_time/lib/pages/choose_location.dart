import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  void getData() async {
    String username = await Future.delayed(const Duration(seconds: 3), () {
      return "Christian Kyle";
    });

    String bio = await Future.delayed(const Duration(seconds: 2), () {
      return "awdawdawdawdawda";
    });

    print("$username - $bio");
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text("Choose Location"),
        centerTitle: true,
        elevation: 0,
      ),
      body: const Text("Choose Location"),
    );
  }
}
