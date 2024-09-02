import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: NinjaCard(),
  ));
}

class NinjaCard extends StatefulWidget {
  const NinjaCard({super.key});

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text(
          "Ninja ID Card",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () {
              setState(() {
                ninjaLevel += 1;
              });
            },
            backgroundColor: Colors.white,
            child: const Icon(
              Icons.add,
            ),
          ),
          const SizedBox(width: 10.0),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                ninjaLevel -= 1;
              });
            },
            backgroundColor: Colors.white,
            child: const Icon(
              Icons.minimize,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/my_pic.jpg"),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 90.0,
              color: Colors.grey[800],
            ),
            const Text(
              "NAME",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              "Christian Kyle",
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30.0),
            const Text(
              "CURRENT NINJA LEVEL",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              "$ninjaLevel",
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),
            Row(
              children: <Widget>[
                Icon(
                    Icons.email,
                    color: Colors.grey[400]
                ),
                const SizedBox(width: 10.0),
                Text(
                  "christiankyle.autor@csucc.edu.ph",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 15.0,
                    letterSpacing: 1.0,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );;
  }
}



