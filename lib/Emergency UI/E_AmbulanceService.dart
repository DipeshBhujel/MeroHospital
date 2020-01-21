import 'package:flutter/material.dart';
//import 'package:merohospital/BackEnd/auth.dart';
import 'package:merohospital/Pages/home.dart';

class E_AmbulanceService extends StatelessWidget {

//final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    //Screenconfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Ambulance Service"),
        backgroundColor: Colors.grey,
         actions: <Widget>[
              FlatButton.icon(
                icon: Icon(Icons.person),
                label: Text('Sign In'),
                onPressed:() {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
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

        child: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/ambulance.jpg"),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}