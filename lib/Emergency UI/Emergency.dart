import 'package:flutter/material.dart';
import 'package:merohospital/Emergency%20UI/E_AmbulanceService.dart';
import 'package:merohospital/Emergency%20UI/E_Bloodbankdept.dart';
import 'package:merohospital/Emergency%20UI/E_NearbyHospital.dart';
import 'package:merohospital/Pages/home.dart';

import 'E_BloodDoner.dart';

//import 'BloodDonor.dart';

class EmergencyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
          appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text("Emergency Service", style: TextStyle(
            fontSize: 20,
            ),
            ),
          ),
          backgroundColor: Colors.grey,
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
                   padding: const EdgeInsets.only(top:40.0),
                   child: Row(
                     children: <Widget>[
                       Padding(
                padding: const EdgeInsets.only(top:50.0,left: 15.0),
                child: MaterialButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>E_NearbyHospital()),);
                },
                child: Column(
                  children: <Widget>[
                    Icon(Icons.home),
                    Text("Nearby Hospital", style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                    ),),
                  ],
                ),
                color: Colors.grey,
                          elevation: 0,
                          minWidth: 150,
                          height: 150,
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                ),
              ),

               Padding(
                padding: const EdgeInsets.only(top:50.0,left: 21.0),
                child: MaterialButton(
                onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>E_AmbulanceService()),);
                },
                child: Column(
                  children: <Widget>[
                    Icon(Icons.local_hospital),
                    Text("Ambulance Service", style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                    ),),
                  ],
                ),
                color: Colors.grey,
                      elevation: 0,
                      minWidth: 150,
                      height: 150,
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
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>E_Bloodbankdept()),);
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
                        minWidth: 150,
                        height: 150,
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                    ),
              ),

               Padding(
                padding: const EdgeInsets.only(top:20.0,left: 21.0),
                child: MaterialButton(
                onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=> E_BloodDoner()),);
                },
                child: Column(
                  children: <Widget>[
                    Icon(Icons.supervisor_account),
                    Text("Blood Donor's", style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),),
                  ],
                ),
                color: Colors.grey,
                    elevation: 0,
                    minWidth: 150,
                    height: 150,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                ),
              ),
                 ],
               ),
                Padding(
                padding: const EdgeInsets.all(50.0),
                child: MaterialButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()),);
                },
                child: Text("Other Services ", style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),),
                color: Colors.blueGrey,
                    elevation: 0,
                    minWidth: 350,
                    height: 90,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
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