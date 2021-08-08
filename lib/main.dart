import 'package:flutter/material.dart';
import 'package:trainingandroidflutter_jvg/menu_gridview/page_custom_grid.dart';
import 'package:trainingandroidflutter_jvg/menu_gridview/page_simple_grid.dart';
import 'package:trainingandroidflutter_jvg/menu_listview/page_list_horizontal.dart';
import 'package:trainingandroidflutter_jvg/menu_listview/page_listview.dart';
import 'package:trainingandroidflutter_jvg/page_kedua.dart';
import 'package:trainingandroidflutter_jvg/ui/PageLoginRegister.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: PageBeranda(),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/pageRegister' :  (BuildContext context) => PageRegister(),
        '/pageListview' :  (BuildContext context) => PageListView(),
      },
    );
  }
}

//file dart : main.dart
//class :
//stateless : view aja, text, button
//statefull  : get data, view data,

class PageBeranda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Page Utama'),
      ),
      //widget : AppBar , Center, Icon (diawali huruf gede : widget)
      //property widget : yang ada didalam widget, huruf kecil

      //child : Ini untuk widget yang didalam nya cuma bisa 1 widget
      //children  : lebih dari 1 widget

      // body: Center(
      //   child: Text('Welcome to Our First Project', style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold),),
      // ),

      //Layout : row, column

      //jarak
      //padding : ngasih jarak di dalam widget
      //sizebox : antar widget

      // body: Container(
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Container(
      //         color: Colors.redAccent,
      //           padding: EdgeInsets.all(16),
      //           child: Text(
      //         'Text 1',
      //         style: TextStyle(
      //             color: Colors.white, fontWeight: FontWeight.bold),
      //       )),
      //       SizedBox(width: 10,),
      //       Container(
      //         color: Colors.blue,
      //           padding: EdgeInsets.all(16),
      //           child: Text(
      //         'Text 3',
      //         style: TextStyle(
      //             color: Colors.redAccent, fontWeight: FontWeight.bold),
      //       )),
      //       SizedBox(width: 10,),
      //       Container(
      //         color: Colors.green,
      //           padding: EdgeInsets.all(16),
      //           child: Text(
      //         'Text 4',
      //         style: TextStyle(
      //             color: Colors.redAccent, fontWeight: FontWeight.bold),
      //       )),
      //       SizedBox(width: 10,),
      //       Container(
      //         color: Colors.yellow,
      //           padding: EdgeInsets.all(16),
      //           child: Text(
      //         'Text 5',
      //         style: TextStyle(
      //             color: Colors.redAccent, fontWeight: FontWeight.bold),
      //       )),
      //     ],
      //   ),
      // ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                color: Colors.redAccent,
                padding: EdgeInsets.all(16),
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).pushNamed('/pageListview');
                  },
                  child: Text(
                    'Lisview',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            Container(
                color: Colors.blue,
                padding: EdgeInsets.all(16),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> PageListHorizontal()));
                  },
                  child: Text(
                    'List Horizontal',
                    style: TextStyle(
                        color: Colors.redAccent, fontWeight: FontWeight.bold),
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            Container(
                color: Colors.green,
                padding: EdgeInsets.all(16),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> PageGridview()));
                  },
                  child: Text(
                    'Simple Grid',
                    style: TextStyle(
                        color: Colors.redAccent, fontWeight: FontWeight.bold),
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            Container(
                color: Colors.yellow,
                padding: EdgeInsets.all(16),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> PageCustomGrid()));
                  },
                  child: Text(
                    'Grid Foto',
                    style: TextStyle(
                        color: Colors.redAccent, fontWeight: FontWeight.bold),
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.yellow,
              padding: EdgeInsets.all(16),
              child: MaterialButton(
                child: Text('Page 2'),
                onPressed: () {
                  //pindah ke page lain : navigator
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PageKedua()));
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.yellow,
              padding: EdgeInsets.all(16),
              child: MaterialButton(
                child: Text('Page 3'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PageKetiga()));
                },
              ),
            ),

            Container(
              color: Colors.yellow,
              padding: EdgeInsets.all(16),
              child: MaterialButton(
                child: Text('Page Login Register'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PageLogin()));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
