import 'package:flutter/material.dart';
class PageListHorizontal extends StatelessWidget {
  const PageListHorizontal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Horizontal'),
        backgroundColor: Colors.green,
      ),

      body: Container(
        height: 200,
        margin: EdgeInsets.symmetric(vertical: 20),

        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [

            Container(
              height: 200,
              width: 160,
              color: Colors.deepOrange,
            ),
            Container(
              height: 200,
              width: 160,
              color: Colors.blueAccent,
            ),
            Container(
              height: 200,
              width: 160,
              color: Colors.blue,
            ),
            Container(
              height: 200,
              width: 160,
              color: Colors.black38,
            ),
            Container(
              height: 200,
              width: 160,
              color: Colors.red,
            ), Container(
              height: 200,
              width: 160,
              color: Colors.yellow,
            ), Container(
              height: 200,
              width: 160,
              color: Colors.white,
            ), Container(
              height: 200,
              width: 160,
              color: Colors.green,
            ),




          ],
        ),
      ),
    );
  }
}
