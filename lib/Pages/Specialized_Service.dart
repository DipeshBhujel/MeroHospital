import 'package:flutter/material.dart';
// import 'package:merohospital/BackEnd/Authenticate.dart';
import 'package:merohospital/BackEnd/auth.dart';
import 'package:merohospital/Pages/AmbulanceService.dart';
import 'package:merohospital/Pages/AppointmentForm.dart';
import 'package:merohospital/Pages/BloodBankDept.dart';
import 'package:merohospital/Pages/Doctor.dart';
import 'package:merohospital/Pages/QuestionarySection.dart';

import 'BloodDonor.dart';
import 'Doctor.dart';
import 'HospitalNearBy.dart';
import 'HospitalSpecialization.dart';

class SpecializedService extends StatelessWidget {

final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
          appBar:AppBar(
            title: Padding(
            padding: const EdgeInsets.only(left: 35),
            child: Text("Specialized Service", style: TextStyle(
            fontSize: 16.5,
            ),
            ),
          ),
          backgroundColor: Colors.grey,
            elevation: 0,
            leading: Icon(
              Icons.menu,
              color: Colors.white ,
            ),
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
         
          body: Container(    //create full boday container 
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              image: DecorationImage(
                image: AssetImage("images/hospitalnepal.jpg"), 
                //fit: BoxFit.fitWidth,
                fit: BoxFit.cover,
                //alignment: Alignment.topCenter,
              ),
            ),


            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                 Padding(
                   padding: const EdgeInsets.only(top:0.0),
                   child: Row(
                     children: <Widget>[
                       Padding(
                padding: const EdgeInsets.only(top:30.0,left: 15.0),
                child: MaterialButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HospitalNearBy()),);
                },
                child: Column(
                  children: <Widget>[
                    Icon(Icons.home),
                    Text("Nearby Hospital", style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                    ),),
                  ],
                ),
                color: Colors.grey,
                          elevation: 0,
                          minWidth: 175,
                          height: 120,
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                ),
              ),

               Padding(
                padding: const EdgeInsets.only(top:30.0,left: 13.0),
                child: MaterialButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AmbulanceService()),);
                },
                child: Column(
                  children: <Widget>[
                    Icon(Icons.local_hospital),
                    Text("Ambulance Service", style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight:FontWeight.bold,
                    ),),
                  ],
                ),
                color: Colors.grey,
                      elevation: 0,
                      minWidth: 175,
                      height: 120,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                ),
              ),
                     ],
                   ),
                 ),

                Padding(
                   padding: const EdgeInsets.only(top:10.0),
                   child: Row(
                     children: <Widget>[
                       Padding(
                padding: const EdgeInsets.only(top:5.0,left: 15.0),
                child: MaterialButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HospitalSpecialization()),);
                },
                child: Column(
                  children: <Widget>[
                    Icon(Icons.home),
                    Text("Hospital", style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                    ),),
                  ],
                ),
                color: Colors.grey,
                          elevation: 0,
                          minWidth: 175,
                          height: 120,
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                ),
              ),

               Padding(
                padding: const EdgeInsets.only(top:5.0,left: 13.0),
                child: MaterialButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Doctor()),);
                },
                child: Column(
                  children: <Widget>[
                    Icon(Icons.person),
                    Text("Doctor", style: TextStyle(
                        color: Colors.white,
                        fontSize: 21,
                    ),),
                  ],
                ),
                color: Colors.grey,
                      elevation: 0,
                      minWidth: 175,
                      height: 120,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                ),
              ),
                     ],
                   ),
                 ),

               Row(
                 children: <Widget>[
                   Padding(
                    padding: const EdgeInsets.only(top:20.0,left: 15.0),
                    child: MaterialButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>BloodBankDept()),);
                    },
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.store),
                        Text("Blood Bank Dept.", style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),),
                      ],
                    ),
                    color: Colors.grey,
                        elevation: 0,
                        minWidth: 175,
                        height: 120,
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                    ),
              ),

               Padding(
                padding: const EdgeInsets.only(top:20.0,left: 13.0),
                child: MaterialButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>BloodDonor()),);
                },
                child: Column(
                  children: <Widget>[
                    Icon(Icons.supervisor_account),
                    Text("Blood Donor", style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),),
                  ],
                ),
                color: Colors.grey,
                    elevation: 0,
                    minWidth: 175,
                    height: 120,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                ),
              ),
                 ],
               ),

                Padding(
                padding: const EdgeInsets.only(left:5,top:20.0),
                child: MaterialButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>QuestionarySection()),);
                },
                child: Text("Ask any Question", style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),),
                color: Colors.blueGrey,
                    elevation: 0,
                    minWidth: 380,
                    height: 70,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                ),
              ),

               Padding(
                padding: const EdgeInsets.only(left:5,top:20.0),
                child: MaterialButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AppointmentForm()),);
                },
                child: Text("Book an Appointment", style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),),
                color: Colors.blueGrey,
                    elevation: 0,
                    minWidth: 380,
                    height: 70,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                ),
              ),
              ],
            ),
          ),
        )
      ],
    );
}
}