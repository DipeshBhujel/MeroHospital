import 'package:flutter/material.dart';
//import 'package:merohospital/BackEnd/Authenticate.dart';
import 'package:merohospital/Pages/Specialized_Service.dart';
import 'package:merohospital/Pages/home.dart';
import 'package:provider/provider.dart';

import 'User.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);

    // return either home or Authenticate widget
    if(user == null){
      return Home();
    }else{
      return SpecializedService();
    }
  }
}