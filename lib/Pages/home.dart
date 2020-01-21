import 'package:flutter/material.dart';
import 'package:merohospital/BackEnd/Authenticate.dart';

//import 'SignIn.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Authenticate(),
    );
  }
}