import 'package:flutter/material.dart';
import 'package:merohospital/Shared/loading.dart';

import 'auth.dart';
class Register extends StatefulWidget {

final Function toggleView;
Register({this.toggleView});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

   final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;
//text field state
  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return loading ? Loading() : Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/hospitalnepal.jpg'),
              fit: BoxFit.fitWidth,
              alignment: Alignment.topCenter
            )
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,//width is equal to screen size width
          margin: EdgeInsets.only(top: 275),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.black12,
          ),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                         TextFormField(
                      validator: (val) => val.isEmpty ? 'Enter an email' : null,
                      onChanged: (val){
                        setState(()=> email = val);
                      },
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'SFUIDisplay'
                      ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Username',
                        prefixIcon: Icon(Icons.person_outline),
                        labelStyle: TextStyle(
                          fontSize: 15
                        )
                      ),
                    ),

                    SizedBox(height: 20),

                    TextFormField(
                     validator: (val) => val.length <6 ? 'Enter a password 6+ Character long' : null,
                    onChanged: (val){
                      setState(()=> password = val);
                    },
                    obscureText: true,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'SFUIDisplay'
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.lock_outline),
                      labelStyle: TextStyle(
                          fontSize: 15
                        )
                    ),
                  ),
                      ],
                    ),
                  )
                  ),
                //   child: Container(
                //     color: Color(0xfff5f5f5),
                //     key: _formKey,
                //     //1st textformfield
                //     child: TextFormField(
                //       validator: (val) => val.isEmpty ? 'Enter an email' : null,
                //       onChanged: (val){
                //         setState(()=> email = val);
                //       },
                //       style: TextStyle(
                //         color: Colors.black,
                //         fontFamily: 'SFUIDisplay'
                //       ),
                //       decoration: InputDecoration(
                //         border: OutlineInputBorder(),
                //         labelText: 'Username',
                //         prefixIcon: Icon(Icons.person_outline),
                //         labelStyle: TextStyle(
                //           fontSize: 15
                //         )
                //       ),
                //     ),
                //   ),
                // ),
                // Container(
                //   color: Color(0xfff5f5f5),
                //   //2nd textformfield
                //   child: TextFormField(
                //      validator: (val) => val.length <6 ? 'Enter a password 6+ Character long' : null,
                //     onChanged: (val){
                //       setState(()=> password = val);
                //     },
                //     obscureText: true,
                //     style: TextStyle(
                //       color: Colors.black,
                //       fontFamily: 'SFUIDisplay'
                //     ),
                //     decoration: InputDecoration(
                //       border: OutlineInputBorder(),
                //       labelText: 'Password',
                //       prefixIcon: Icon(Icons.lock_outline),
                //       labelStyle: TextStyle(
                //           fontSize: 15
                //         )
                //     ),
                //   ),
                // ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  //material bottom
                  child: MaterialButton(
                    onPressed: () async{
                     if(_formKey.currentState.validate()) {
                       setState(() {
                         loading =true;
                       });
                       dynamic result = await _auth.registerWithEmailAndPassword(email,password);
                       if(result == null){
                         setState((){
                           error = 'Please Enter a valid email';
                           loading = false;
                       });
                       }
                      //  print(email);
                      //  print(password);
                     }
                     // Navigator.push(context, MaterialPageRoute(builder: (context)=>SpecializedService()),);
                    },//since this is only a UI app but we can assign path
                    child: Text('Register',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'SFUIDisplay',
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    color: Color(0xffff2d55),
                    elevation: 0,
                    minWidth: 400,
                    height: 50,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ),
                
                SizedBox(height: 10),
                Center(
                  child: Text(error,
                  style:TextStyle(color:Colors.red, fontSize: 14.0)),
                ),
                
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Center(
                    child: Text('Forgot your password?',
                    style: TextStyle(
                      fontFamily: 'SFUIDisplay',
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Don't have an account?",
                            style: TextStyle(
                              fontFamily: 'SFUIDisplay',
                              color: Colors.black,
                              fontSize: 15,
                            )
                          ),
                         ]
                      ),
                    ),
                  ),
                ),
                 FlatButton.icon(
                            icon: Icon(Icons.person),
                            label: Text("Sign In"),
                            onPressed: () {
                              widget.toggleView();
                            },
                          )
              ],
            ),
          ),
        )
      ],
    );
      
   
  }
}