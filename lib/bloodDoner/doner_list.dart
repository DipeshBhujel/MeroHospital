import 'package:flutter/material.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:merohospital/bloodDoner/doner_tile.dart';
import 'package:provider/provider.dart';
import 'package:merohospital/bloodDoner/doner.dart';

class DonerList extends StatefulWidget {
  @override
  _DonerListState createState() => _DonerListState();
}

class _DonerListState extends State<DonerList> {
  @override
  Widget build(BuildContext context) {

    final doners = Provider.of<List<Doner>>(context);
  
   return ListView.builder(
     itemCount: doners.length,
     itemBuilder: (context, index) {
       return DonerTile(doner: doners[index]);
     },
   );
  }
}