import 'package:flutter/material.dart';
//import 'package:merohospital/BackEnd/wrapper.dart';

//import 'package:merohospital/Pages/welcomepage.dart';
import 'package:provider/provider.dart';

import 'BackEnd/User.dart';
import 'BackEnd/auth.dart';
import 'Shared/HomePage.dart';

void main(){
  runApp(MeroHospital());
}
class MeroHospital extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp( 
         home:HomePage(),
           debugShowCheckedModeBanner: false,
      ),
    );
  }
}