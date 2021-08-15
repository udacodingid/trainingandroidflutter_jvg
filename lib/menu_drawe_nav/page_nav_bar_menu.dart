import 'package:flutter/material.dart';
import 'package:trainingandroidflutter_jvg/utils_widget/utils_colors_page.dart';

class PageNavBarMenu extends StatefulWidget {
  const PageNavBarMenu({Key? key}) : super(key: key);

  @override
  _PageNavBarMenuState createState() => _PageNavBarMenuState();
}

class _PageNavBarMenuState extends State<PageNavBarMenu> {

  int currentIndex = 1;
  final List<Widget> _listColors = [
    PageColorsWidget(Colors.black),//0
    PageColorsWidget(Colors.blue),//1
    PageColorsWidget(Colors.green),//2
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Nav Bar menu'),
        backgroundColor: Colors.green,
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text('Welcome'),
            ),

            Divider(),
            ListTile(
              title: Text('Tentang'),
              leading: Icon(Icons.info),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, '/pageRegister');
              }
            ),

            ListTile(
              title: Text('About'),
              leading: Icon(Icons.person),
                onTap: (){
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/pageListview');
                }
            ),

            ListTile(
              title: Text('Inbox'),
              leading: Icon(Icons.message),
            ),
          ],
        ),
      ),

      body: _listColors[currentIndex],

      //bottom menu
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onTapped,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profil'),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            title: Text('Inbox'),
          )
        ],

      ),
    );
  }

  void _onTapped(int index){
    setState(() {

      currentIndex = index;
    });
  }
}
