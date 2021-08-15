import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class PageListBerita extends StatefulWidget {


  @override
  _PageListBeritaState createState() => _PageListBeritaState();
}

class _PageListBeritaState extends State<PageListBerita> {

  //get data berita
  // var loading = fase;

  Future<List> getData() async {

    final responseData =
    await http.get(Uri.parse('http://192.168.10.48/server_berita/get_berita.php'),
        headers: {
          "Accept": "application/json",
          "Access-Control_Allow_Origin": "*"
        }
    );

    return json.decode(responseData.body);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Berita Apps'),
        backgroundColor: Colors.orangeAccent,
      ),

      body: FutureBuilder<List>(
        future: getData(),
        builder: (context, snapshot){
          if(snapshot.hasError) print(snapshot.error);

          return snapshot.hasData ? ItemListBerita(list: snapshot.data!,) :
              Center(child: CircularProgressIndicator());

        },
      ),
    );
  }
}
class ItemListBerita extends StatelessWidget {
    final List list;
    ItemListBerita({required this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index ){
        return Container(
          padding: EdgeInsets.all(10),
          child: GestureDetector(
            onTap: (){},
            child: Card(
              child: ListTile(
                title: Text(list[index]['judul'], style: TextStyle(
                  fontSize: 14, fontWeight: FontWeight.bold, color: Colors.brown
                ),),
                subtitle: Text(list[index]['tgl_berita'], style: TextStyle(
                  fontSize: 9
                ),),
                trailing: Image.network('http://192.168.10.48/server_berita/gambar/${list[index]['foto']}',
                  fit: BoxFit.cover,
                  width: 60,
                  height: 60,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

