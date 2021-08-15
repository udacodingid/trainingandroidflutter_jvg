import 'package:flutter/material.dart';

class PageSearchList extends StatefulWidget {
  const PageSearchList({Key? key}) : super(key: key);

  @override
  _PageSearchListState createState() => _PageSearchListState();
}

class _PageSearchListState extends State<PageSearchList> {

  var etSearch = TextEditingController();
  bool isSearch = true;

  String query = "";

   List<String> dataList = [];
   List<String> filterList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dataList = <String>[];
    dataList = [
      "Gajah",
      "Harimau",
      "Serigala",
      "Ular",
      "Kerbau",
      "Sapi",
      "Anjing",
      "Kucing",
      "Lebah",
      "Burung",
      "Ikan Paus",
      "Domba",
    ];
    dataList.sort();
  }

  _PageSearchListState(){
    etSearch.addListener(() {
      if(etSearch.text.isEmpty){
        setState(() {
          isSearch = false;
          query = "";
        });
      }else{
        setState(() {
          isSearch = true;
          query = etSearch.text;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Search'),
        backgroundColor: Colors.green,
      ),

      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            _createSearchView(),
            isSearch ? _performSearch() : _createListView(),
          ],
        ),
      ),
    );
  }

  Widget _createSearchView(){
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 1.0)
      ),
      child: TextField(
        controller: etSearch,
        decoration: InputDecoration(
            hintText: 'Search',
            hintStyle: TextStyle(color: Colors.green)
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _createListView(){
    return Flexible(
      child: ListView.builder(
        itemCount: dataList.length,
        itemBuilder: (BuildContext, int index){
          return Card(
            child: Container(
              margin: EdgeInsets.all(10.0),
              color: Colors.white,
              child: Text('${dataList[index]}'),

            ),
          );
        },
      ),
    );
  }

  Widget _performSearch(){
    filterList = <String>[];
    for (int i = 0; i< dataList.length; i++){
      var item = dataList[i];
      if(item.toLowerCase().contains(query.toLowerCase())){
        filterList.add(item);
      }
    }
    return _createFilteredListView();
  }

  Widget _createFilteredListView(){
    return Flexible(
      child: ListView.builder(
        itemCount: filterList.length,
        itemBuilder: (BuildContext context, int index){
          return Card(
            color: Colors.white,
            child: Container(
              margin: EdgeInsets.all(10),
              child: Text('${filterList[index]}'),
            ),
          );
        },
      ),
    );
  }
}




//https://jsonplaceholder.typicode.com/users

// retrieve data Akses data dari server
//1 webservices api --> json atau xml
//2 convert webservices menjadi model --? quicktype.io
//3 tambahkan library untuk akses http atau dio di project flutter




// import 'package:flutter/material.dart';
//
// class PageSearchListview extends StatefulWidget {
//   @override
//   _PageSearchListviewState createState() => _PageSearchListviewState();
// }
//
// class _PageSearchListviewState extends State<PageSearchListview> {
//   TextEditingController _etSearch = new TextEditingController();
//   bool isSearch = true;
//   String query = "";
//   List<String> _dataList = [];
//   List<String> _dataFirlterList = [];
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//
//     _dataList = [
//       "Gajah",
//       "Harimau",
//       "Serigala",
//       "Ular",
//       "Kerbau",
//       "Sapi",
//       "Anjing",
//       "Kucing",
//       "Lebah",
//       "Burung",
//       "Ikan Paus",
//       "Domba",
//     ];
//
//     _dataList.sort();
//   }
//
//   _PageSearchListviewState() {
//     _etSearch.addListener(() {
//       if (_etSearch.text.isEmpty) {
//
//         setState(() {
//           isSearch = false;
//           query = "";
//           print("ini false");
//         });
//
//       } else {
//         setState(() {
//           isSearch = true;
//           query = _etSearch.text;
//
//           print("ini true");
//           print("quernya : " + query);
//         });
//
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.green,
//         title: Text('Search Listview'),
//       ),
//       body: Container(
//         margin: EdgeInsets.all(8),
//         child: Column(
//           children: [
//             _createSearchView(),
//             // _createListView(),
//             isSearch ? _createListView() : _performSearch()
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _createSearchView() {
//     return Container(
//       decoration: BoxDecoration(border: Border.all(width: 1)),
//       child: TextField(
//         controller: _etSearch,
//         decoration: InputDecoration(hintText: 'Search ...'),
//         textAlign: TextAlign.center,
//       ),
//     );
//   }
//
//   Widget _createListView() {
//     return Flexible(
//       child: ListView.builder(
//         itemCount: _dataList.length,
//         itemBuilder: (BuildContext context, int index) {
//           return Card(
//             child: Container(
//               margin: EdgeInsets.all(5),
//               color: Colors.white,
//               child: Text('${_dataList[index]}'),
//             ),
//           );
//         },
//       ),
//     );
//   }
//
//   Widget _performSearch() {
//     _dataFirlterList =[];
//     for (int i = 0; i < _dataList.length; i++) {
//       var item = _dataList[i];
//       if (item.toLowerCase().contains(query.toLowerCase())) {
//         print("query : " + query);
//         _dataFirlterList.add(item);
//       }
//     }
//     return _createFilterListView();
//   }
//
//   Widget _createFilterListView() {
//     return Flexible(
//       child: ListView.builder(
//           itemCount: _dataFirlterList.length,
//           itemBuilder: (BuildContext context, int index) {
//             return Card(
//               child: Container(
//                 margin: EdgeInsets.all(5),
//                 color: Colors.white,
//                 child: Text('${_dataFirlterList[index]}'),
//               ),
//             );
//           }),
//     );
//   }
// }
