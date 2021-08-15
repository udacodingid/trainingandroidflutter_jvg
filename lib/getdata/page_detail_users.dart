import 'package:flutter/material.dart';
import 'package:trainingandroidflutter_jvg/getdata/model_users.dart';

class PageDetailListUsers extends StatelessWidget {
  final ModelUsers _modelUsers;
  PageDetailListUsers(this._modelUsers);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details Users'),
        backgroundColor: Colors.green,
      ),

      body: ListView(
        children: [
          Text(_modelUsers.name),
          Text(_modelUsers.email),
          Text(_modelUsers.phone),
        ],
      ),
    );
  }
}
