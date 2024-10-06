import 'package:brew_crew/screen/authenticate/authenticate.dart';
import 'package:brew_crew/screen/authenticate/sign_in.dart';
import 'package:brew_crew/screen/home/home.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {

    // return either Home or Authenticate Widget
    return const SignIn();
  }
}
