import 'package:firebase_core/firebase_core.dart';
import 'package:brew_crew/screen/wrapper.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyBbtt26v7-aBMvBYd6rXb3dCzw0DkvN1Fg",
      appId: "com.kyle.brew_crew",
      messagingSenderId: "406099696497",
      projectId: "brew-crew-62c77",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Wrapper(),
    );
  }
}
