import 'package:flutter/material.dart';
import 'package:merohospital/BackEnd/database.dart';
import 'package:merohospital/Pages/Screenconfg.dart';
import 'package:merohospital/Pages/home.dart';
import 'package:merohospital/bloodDoner/doner.dart';
import 'package:provider/provider.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
class E_BloodDoner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenConfig() .init(context);
    return StreamProvider<List<Doner>>.value(
        value: DatabaseService().meroHospitals,
          child: Scaffold(
        appBar: AppBar(
          title: Text("Blood Donor's"),
          backgroundColor: Colors.grey,
           actions: <Widget>[
              FlatButton.icon(
                icon: Icon(Icons.person),
                label: Text('Sign In'),
                onPressed:() async{
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
                },
              )
            ],
        ),
        body: Stack(
          children: <Widget>[
          Container(
               height: ScreenConfig.blockSizeV *50,
               width: ScreenConfig.blockSizeH *100,
               decoration: BoxDecoration(
                 image: DecorationImage(
                   image: AssetImage("images/blooddonation.jpeg"),
                   fit: BoxFit.cover,
                 ),
                 //borderRadius: BorderRadius.all(Radius.circular(80)),
                 //color: Colors.black,
               ),
             ),
          Container(
            width: ScreenConfig.blockSizeH*100,//width is equal to screen size width
            margin: EdgeInsets.only(top: ScreenConfig.blockSizeV *50),
            decoration: BoxDecoration(
              //borderRadius: BorderRadius.circular(35),
              color: Colors.black12,
            ),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 20,top: 60),
                      child: MaterialButton(
                        onPressed: (){
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>()),);
                        },
                        child: Text("Blood O+", style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        )),
                        color: Colors.grey,
                        minWidth: ScreenConfig.blockSizeH * 22,
                        height: ScreenConfig.blockSizeV *20,
                        //textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 20,top: 60),
                      child: MaterialButton(
                        onPressed: (){

                        },
                        child: Text("Blood O-", style:TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        )),
                        color: Colors.grey,
                        minWidth: ScreenConfig.blockSizeH * 22,
                        height: ScreenConfig.blockSizeV *20,
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),

                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 20,top: 20),
                      child: MaterialButton(
                        onPressed: (){

                        },
                        child: Text("Blood AB+", style:TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        )),
                        color: Colors.grey,
                        minWidth: ScreenConfig.blockSizeH * 22,
                        height: ScreenConfig.blockSizeV *20,
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 20,top: 20),
                      child: MaterialButton(
                        onPressed: (){

                        },
                        child: Text("Blood AB-", style:TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        )),
                        color: Colors.grey,
                        minWidth: ScreenConfig.blockSizeH * 22,
                        height: ScreenConfig.blockSizeV *20,
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),

                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 20,top: 20),
                      child: MaterialButton(
                        onPressed: (){

                        },
                        child: Text("Blood A+", style:TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        )),
                        color: Colors.grey,
                        minWidth: ScreenConfig.blockSizeH * 22,
                        height: ScreenConfig.blockSizeV *20,
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 20,top: 20),
                      child: MaterialButton(
                        onPressed: (){

                        },
                        child: Text("Blood A-", style:TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        )),
                        color: Colors.grey,
                        minWidth: ScreenConfig.blockSizeH * 22,
                        height: ScreenConfig.blockSizeV *20,
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),

                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 20,top: 20),
                      child: MaterialButton(
                        onPressed: (){

                        },
                        child: Text("Blood B+", style:TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        )),
                        color: Colors.grey,
                        minWidth: ScreenConfig.blockSizeH * 22,
                        height: ScreenConfig.blockSizeV *20,
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 20,top: 20),
                      child: MaterialButton(
                        onPressed: (){

                        },
                        child: Text("Blood B-", style:TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        )),
                        color: Colors.grey,
                        minWidth: ScreenConfig.blockSizeH * 22,
                        height: ScreenConfig.blockSizeV *20,
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ],
        ),
      ),
    );
  }
}