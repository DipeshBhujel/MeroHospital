import 'package:flutter/material.dart';
import 'package:merohospital/Pages/home.dart';

class Doctor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Doctors"),
        backgroundColor: Colors.grey,
         actions: <Widget>[
              FlatButton.icon(
                icon: Icon(Icons.person),
                label: Text('LogOut'),
                onPressed:() async{
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
                },
              )
            ],
      ),

      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.black12,
        ),
      ),
    );
  }
}