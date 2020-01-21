import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:merohospital/BackEnd/wrapper.dart';
import 'package:merohospital/Emergency%20UI/Emergency.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(  //stack is used to put one container on the top of another 
      children: <Widget>[
        //container with PurpleAncent color 
        Container(
          height:MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,  //here container take width of an parent
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/hospitalnepal.jpg'),
              fit: BoxFit.cover
            )
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top:300.0),
                child: MaterialButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Wrapper()),);
                },
                child: Text("Specilized Service", style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),),
                color: Colors.blueGrey,
                    elevation: 0,
                    minWidth: 300,
                    height: 80,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: MaterialButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>EmergencyPage()),);
                },
                child: Text("Emergency Service", style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),),
                color: Colors.blueGrey,
                    elevation: 0,
                    minWidth: 300,
                    height: 80,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                ),
              ), 
            ],
          ),
        ),

        //continer which contain picture of hospital 
        // Container(
        //   height: 250,
        //   width: MediaQuery.of(context).size.width,
        //   decoration: BoxDecoration(
        //     image: DecorationImage(
        //     image: AssetImage('images/hospitalnepal.jpg'),
        //       //image: NetworkImage("https://www.pexels.com/photo/blue-and-silver-stetoscope"),
        //       fit: BoxFit.fitWidth,
        //       alignment: Alignment.topCenter,
        //     ),
        //     borderRadius: BorderRadius.only(bottomLeft: Radius.circular(180), bottomRight: Radius.circular(180)),
        //   ),
        // ),

        // //container with grey color
        // Container(
        //   width: MediaQuery.of(context).size.width,
        //   margin: EdgeInsets.only(top: 320),
        //   decoration: BoxDecoration(
        //     image: DecorationImage(
        //       image: AssetImage("images/background.jpeg"),
        //       fit: BoxFit.cover,
        //     ),
        //     borderRadius: BorderRadius.only(topLeft:Radius.circular(20) ,topRight: Radius.circular(20)),
        //   ),


        //   child: Column(
        //     children: <Widget>[
        //       Padding(
        //         padding: const EdgeInsets.only(top:100.0),
        //         child: MaterialButton(
        //         onPressed: (){
        //           Navigator.push(context, MaterialPageRoute(builder: (context)=>Wrapper()),);
        //         },
        //         child: Text("Specilized Service", style: TextStyle(
        //           color: Colors.white,
        //           fontSize: 30,
        //         ),),
        //         color: Colors.blueGrey,
        //             elevation: 0,
        //             minWidth: 300,
        //             height: 80,
        //             textColor: Colors.white,
        //             shape: RoundedRectangleBorder(
        //               borderRadius: BorderRadius.circular(10)
        //             ),
        //         ),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.only(top:20.0),
        //         child: MaterialButton(
        //         onPressed: (){
        //           Navigator.push(context, MaterialPageRoute(builder: (context)=>EmergencyPage()),);
        //         },
        //         child: Text("Emergency Service", style: TextStyle(
        //           color: Colors.white,
        //           fontSize: 30,
        //         ),),
        //         color: Colors.blueGrey,
        //             elevation: 0,
        //             minWidth: 300,
        //             height: 80,
        //             textColor: Colors.white,
        //             shape: RoundedRectangleBorder(
        //               borderRadius: BorderRadius.circular(10)
        //             ),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      ]
    );
  }
}