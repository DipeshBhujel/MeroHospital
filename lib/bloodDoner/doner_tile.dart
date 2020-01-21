import 'package:flutter/material.dart';
import 'doner.dart';

class DonerTile extends StatelessWidget {

final Doner doner;
DonerTile({this.doner});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 25.0,
            backgroundColor: Colors.black12 ,
          ),
          title: Text(doner.fname),
          subtitle: Text('Takes ${doner.contact} contact(c)'),
        ),
      ),
    );
  }
}