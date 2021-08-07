import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageKedua extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Page Kedua'),
      ),

      body: Container(
        padding: EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(Icons.alarm, color: Colors.blue,),
                Text('Alarm'),
              ],
            ),

            Column(
              children: [
                Icon(Icons.camera, color: Colors.blue),
                Text('Camera'),
              ],
            ),

            Column(
              children: [
                Icon(Icons.info, color: Colors.blue),
                Text('Info'),
              ],
            ),

            Column(
              children: [
                Icon(Icons.add_chart, color: Colors.blue),
                Text('Chart'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
