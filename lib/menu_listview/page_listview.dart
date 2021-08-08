import 'package:flutter/material.dart';

class PageListView extends StatelessWidget {
  const PageListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Page Listview'),
      ),

      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Text('Menu Listview'),
          ),

          ListTile(
            leading: Icon(Icons.add_chart),
            title: Text('Chart'),
          ),

          ListTile(
            leading: Icon(Icons.add_chart),
            title: Text('Chart'),
          ),

          ListTile(
            leading: Icon(Icons.add_chart),
            title: Text('Chart'),
          ),
          ListTile(
            leading: Icon(Icons.add_chart),
            title: Text('Chart'),
          )
        ],
      ),
    );
  }
}
