import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:merohospital/bloodDoner/doner.dart';

class DatabaseService {

final String uid;
DatabaseService({this.uid});

  // collection reference 
final CollectionReference meroHospitalCollection = Firestore.instance.collection('meroHospitals');

Future updateUserData(String name, String job) async {
  return await meroHospitalCollection.document(uid).setData({
    'name': name,
    'job': job,
  });
}

//doner list from snapshot
List<Doner> _donerListFromSnapshot(QuerySnapshot snapshot){
  return snapshot.documents.map((doc){
    return Doner(
      fname: doc.data['fname'] ?? '',
      lname: doc.data['lname'] ?? '',
      contact: doc.data['contact'] ?? 0,
      address: doc.data['address'] ?? 0,
    );
  });
}

//get meroHospital stream
Stream<List<Doner>> get meroHospitals{
  return meroHospitalCollection.snapshots()
  .map(_donerListFromSnapshot);
}

}