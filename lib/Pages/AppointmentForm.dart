import 'package:flutter/material.dart';
import 'package:merohospital/BackEnd/auth.dart';

class AppointmentForm extends StatelessWidget {

final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Appointment Form"),
         actions: <Widget>[
              FlatButton.icon(
                icon: Icon(Icons.person),
                label: Text('LogOut'),
                onPressed:() async{
                  await _auth.signOut();
                },
              )
            ],
      ),

      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.grey,
        ),
      ),
    );
  }
}