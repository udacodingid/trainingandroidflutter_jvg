import 'package:flutter/material.dart';

class PageHomeScreen extends StatefulWidget {
  //constructor penampung data
  String nUsername, nPassword;

  PageHomeScreen({required this.nUsername, required this.nPassword});

  @override
  _PageHomeScreenState createState() => _PageHomeScreenState();
}

class _PageHomeScreenState extends State<PageHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Home Screen'),
      ),

      body: Center(
        child: Column(

          children: [
            SizedBox(height: 30,),
            Text('Hi Welcome ,username anda :  ${widget.nUsername}'),
            Text('Password anda : ' + widget.nPassword),
          ],
        ),
      ),
    );
  }
}
