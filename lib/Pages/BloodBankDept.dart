import 'package:flutter/material.dart';
import 'package:merohospital/BackEnd/auth.dart';

class BloodBankDept extends StatelessWidget {

final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blood Bank Department"),
        backgroundColor: Colors.grey,
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
          color: Colors.black12,
        ),

        child: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: TextField(
            style: TextStyle(
              color: Colors.black,
              fontSize: 19,
            ),
            decoration: InputDecoration(
              icon: Icon(Icons.search, color: Colors.black, size: 35,),
              hintText: "Blood Bank Name or NearBy Location",
              //labelText: 'Hosptal name',
              //fillColor: Colors.white,
            ),
          ),
        ),
      ),
      ),   
    );
  }
}