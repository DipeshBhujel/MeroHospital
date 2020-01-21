import 'package:firebase_auth/firebase_auth.dart';
import 'package:merohospital/BackEnd/database.dart';

import 'User.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;
//create user obj based on firebaseUser
User _userFromFirebaseUser(FirebaseUser user){

return user != null ? User(uid:user.uid ) : null;
}

//Auth change user stream
Stream<User> get user {
  return _auth.onAuthStateChanged
    //.map((FirebaseUser user) => _userFromFirebaseUser(user));
    .map(_userFromFirebaseUser);
}

//sign in with email and password 
Future signInWithEmailAndPassword(String email, String password) async{
  try {
    AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: password);
    FirebaseUser user = result.user;
    return _userFromFirebaseUser(user);
  } catch(e){
    print(e.toString());
    return null;
  }
}

// Register with email and password 
Future registerWithEmailAndPassword(String email, String password) async{
  try {
    AuthResult result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
    FirebaseUser user = result.user;

    //create a new document for that user 
    await DatabaseService(uid: user.uid).updateUserData('Dipesh', 'Associate Product Manager');


    return _userFromFirebaseUser(user);
  } catch(e){
    print(e.toString());
    return null;
  }
}

//Sign out
Future signOut() async {
  try{
    return await _auth.signOut();
  }catch(e){
    print(e.toString());
    return null;
  }
}
}