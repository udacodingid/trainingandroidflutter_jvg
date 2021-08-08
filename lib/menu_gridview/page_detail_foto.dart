import 'package:flutter/material.dart';
import 'package:trainingandroidflutter_jvg/utils_widget/util_bagianicon.dart';
import 'package:trainingandroidflutter_jvg/utils_widget/utils_bagianketerangan.dart';

class PageDetailFoto extends StatefulWidget {
  String nNamaFoto, nGambar;
  PageDetailFoto({required this.nNamaFoto, required this.nGambar});

  @override
  _PageDetailFotoState createState() => _PageDetailFotoState();
}

class _PageDetailFotoState extends State<PageDetailFoto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Detail Foto ${widget.nNamaFoto}')
      ),

      body: ListView(
        children: [
          Container(
            height: 240,
            margin: EdgeInsets.all(8),
            child: Hero(
              tag: widget.nNamaFoto,
              child: Image.asset('gambar/pantai/${widget.nGambar}', fit: BoxFit.contain,),
            ),
          ),

          BagianNama(nama: widget.nNamaFoto,),
          BagianIcon(),
          BagianKeterangan()
        ],
      ),
    );
  }
}


class BagianNama extends StatelessWidget {
  String nama;
  BagianNama({required this.nama});


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Row(
        children: [

          Expanded(
            child: Column(

              children: [
                Text('${nama}', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green),),
                Text('$nama\@gmail.com', style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.green),),

              ],
            ),
          ),

          Row(
            children: [
              Icon(Icons.star, color: Colors.deepOrange,),
              Text('12', style: TextStyle(fontSize: 12, color: Colors.orange, fontWeight: FontWeight.bold),)
            ],
          )
        ],
      ),
    );
  }
}


