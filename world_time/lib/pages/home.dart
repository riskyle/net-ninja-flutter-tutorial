import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};

  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context)!.settings.arguments; //Error need to fix Episode 30 on Net Ninja Flutter Tutorial
    print(data);

    return Scaffold(
      body: SafeArea(
          child: Column(
            children: <Widget>[
              ElevatedButton.icon(
                  icon: const Icon(Icons.edit_location),
                  onPressed: () {
                    Navigator.pushNamed(context, "/location");
                  },
                  label: const Text("Edit Location")
              ),
            ],
          )
      ),
    );
  }
}
