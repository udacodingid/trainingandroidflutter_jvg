import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trainingandroidflutter_jvg/utils_widget/util_bagianicon.dart';

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
                Icon(
                  Icons.alarm,
                  color: Colors.blue,
                ),
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

//button
//flatbutton, raisedbutton, materialbutton : untuk bisa d klik
//image, text, tambahkan InkWell

class PageKetiga extends StatelessWidget {
  const PageKetiga({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Ketiga'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            FlatButton(onPressed: () {}, child: Text('Button 1')),
            RaisedButton(
              onPressed: () {},
              child: Text('Button 2'),
            ),
            MaterialButton(
              onPressed: () {},
              child: Text('Button 3'),
            ),
            InkWell(
             onTap: (){
               print("ini di klik");

             },
                child: Text('Ini coba di klik')),

            BagianIcon()
          ],
        ),
      ),
    );
  }
}
