import 'package:flutter/material.dart';
class PageGridview extends StatelessWidget {
  const PageGridview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Page Grid'),
      ),

      body: GridView.count(crossAxisCount: 3,

        children: List.generate(12, (index){
          int nIndex  =  index + 1;
          String dataIndex = '$nIndex';

          return Center(
            child: Container(
              margin: EdgeInsets.all(8),
              height: 100,
              width: 100,
              color: Colors.green,
              child: Text('no ke : ${dataIndex}'),
            )
          );

        }),
      ),
    );
  }
}
