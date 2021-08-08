import 'package:flutter/material.dart';
import 'package:trainingandroidflutter_jvg/menu_gridview/page_detail_foto.dart';

class PageCustomGrid extends StatefulWidget {
  const PageCustomGrid({Key? key}) : super(key: key);

  @override
  _PageCustomGridState createState() => _PageCustomGridState();
}

class _PageCustomGridState extends State<PageCustomGrid> {

  List<Container> listFoto = [];

  var itemListFoto =[
    {"nama" : "Pantai 1", "gambar" : "pantai1.jpg"}, //0
    {"nama" : "Pantai 2", "gambar" : "pantai2.jpeg"},//1
    {"nama" : "Pantai 3", "gambar" : "pantai3.jpg"},//2
    {"nama" : "Pantai 4", "gambar" : "pantai4.jpg"},
    {"nama" : "Pantai 5", "gambar" : "pantai5.jpg"},
    {"nama" : "Pantai 6", "gambar" : "pantai6.jpg"},
  ];

  _buatAlbumFoto ()async{
    for (var i=0 ; i<itemListFoto.length; i++){

      final itemFoto = itemListFoto[i];
      final String? gambarFoto = itemFoto['gambar'];
      String namaFoto = itemFoto['nama']!;

      listFoto.add(Container(
        padding: EdgeInsets.all(10),
        child: Card(
          child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>PageDetailFoto(nNamaFoto: namaFoto, nGambar: gambarFoto!)));
            },
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(5)),
                Hero(
                  tag: namaFoto,
                  child: Image.asset('gambar/pantai/$gambarFoto', height: 125,),
                ),
                Padding(padding: EdgeInsets.all(5)),
                Text('$namaFoto')
              ],
            ),
          ),


        ),
      ));

    }

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _buatAlbumFoto();
  }

  //do onBackgroud
  //setState : proses pada view
  //initState : sebelum view ke panggil


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Album Foto'),
      ),

      body: GridView.count(crossAxisCount: 2,
      children: listFoto,
      ),

    );
  }
}
