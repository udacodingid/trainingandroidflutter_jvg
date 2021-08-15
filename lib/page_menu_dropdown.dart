import 'package:flutter/material.dart';

class PageMenuDropDown extends StatefulWidget {
  const PageMenuDropDown({Key? key}) : super(key: key);

  @override
  _PageMenuDropDownState createState() => _PageMenuDropDownState();
}

class _PageMenuDropDownState extends State<PageMenuDropDown> {
  List<String> _listKota = ["Jakarta", "Bandung", "Bogor", "Semarang", "Yogya"];

  String nKota = "Jakarta";
  int nIndexKota = 0;

  //method
  void pilihKota(String kota) {
    setState(() {
      nKota = kota;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Page Dropdown'),
      ),

      body: Form(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              SizedBox(height: 20,),
              Text('Pilih Kota'),
              SizedBox(height: 30,),
              DropdownButton(
                onChanged: (String? value){
                  pilihKota(value!);// null safety
                  nIndexKota = _listKota.indexOf(value);
                },
                value:  nKota,
                items: _listKota.map(
                    (String value){
                      return DropdownMenuItem(
                        child: Text(value),
                        value: value,
                      );
                    }
                ).toList(),
              ),

              SizedBox(height: 20,),
              Container(
                child: MaterialButton(
                  child: Text('Submit'),
                  color: Colors.green,
                  onPressed: (){
                    print('Yang ada pilih : ' + nKota);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
