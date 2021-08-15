import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trainingandroidflutter_jvg/ui/PageHomeScreen.dart';
import 'package:fluttertoast/fluttertoast.dart';

class PageLogin extends StatefulWidget {
  const PageLogin({Key? key}) : super(key: key);

  @override
  _PageLoginState createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin> {
  TextEditingController etUsername = new TextEditingController();
  TextEditingController etPassword = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Udacoding Apps'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [

              SizedBox(height: 20,),
              InkWell(
                  onTap: (){
                    print("Anda klik gambar");
                  },
                  child: Image.asset('gambar/logo.png', fit: BoxFit.contain, height: 125, width: 125,)),
              SizedBox(height: 10,),
              Text('Udacoding Apps', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),),

              TextFormField(
                controller: etUsername,
                decoration: InputDecoration(
                  hintText: 'Username ...'
                ),
              ),

              SizedBox(height: 10,),
              TextFormField(
                controller: etPassword,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Password ...'
                ),
              ),

              SizedBox(height: 10,),
              MaterialButton(onPressed: (){

                //proses onBackground
                setState(() {

                  print("username : " + etUsername.text);//ngambil data dari edittext --> cukup .text
                  print("password : " + etPassword.text);

                  //menambahkan kondisi apabila username != admin dan pass != admin --> dia gak bisa login
                  String nName = etUsername.text;
                  String nPass = etPassword.text;

                  if((nName == "admin") && (nPass == "admin")){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>PageHomeScreen(nUsername: etUsername.text, nPassword: etPassword.text)));
                  }else{
                    print("username atau password salah!!");
                    Fluttertoast.showToast(
                        msg: "Username atau password salah!!",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0
                    );
                  }
                });
              },
                color: Colors.green,
                child: Text('Submit', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              ),

              SizedBox(height: 10,),
              InkWell(
                  onTap: (){
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=> PageRegister()));
                    Navigator.of(context).pushNamed('/pageRegister');
                  },
                  child: Text('Dont have an account ? Please Register', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)))
            ],
          ),
        ),
      ),
    );
  }
}


class PageRegister extends StatefulWidget {
  const PageRegister({Key? key}) : super(key: key);

  @override
  _PageRegisterState createState() => _PageRegisterState();
}

class _PageRegisterState extends State<PageRegister> {

  int _groupKelamin = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Udacoding Apps'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [

              SizedBox(height: 20,),
              InkWell(
                  onTap: (){
                    print("Anda klik gambar");
                  },
                  child: Image.asset('gambar/logo.png', fit: BoxFit.contain, height: 125, width: 125,)),
              SizedBox(height: 10,),
              Text('Register Udacoding Apps', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),),

              TextFormField(
                decoration: InputDecoration(
                    hintText: 'Username ...'
                ),
              ),

              SizedBox(height: 10,),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Password ...'
                ),
              ),
              SizedBox(height: 10,),
              TextFormField(
               minLines: 3,
                maxLines: 10,
                decoration: InputDecoration(
                    hintText: 'Moto Hidup ...',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))
                ),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Radio(
                    onChanged: (int? i){
                      setState(() {
                       _groupKelamin = i!;
                      });
                    },
                    value: 0,
                    groupValue: _groupKelamin,
                  ),
                  Text('Laki-laki'),
                  Radio(
                    onChanged: (int? i){
                      setState(() {
                        _groupKelamin = i!;
                      });
                    },
                    value: 1,
                    groupValue: _groupKelamin,
                  ),
                  Text('Perempuan'),
                ],
              ),


              SizedBox(height: 10,),
              MaterialButton(onPressed: (){
                print("Jenis Kelamin : " + ((_groupKelamin == 0 ? "Laki-Laki" : "Wanita")));
              },
                color: Colors.green,
                child: Text('Register', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              ),

              SizedBox(height: 10,),
              InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> PageLogin()));

                  },
                  child: Text('Do you have an account ? Please :Login', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)))
            ],
          ),
        ),
      ),
    );
  }
}


//notification widget
//berfungsi informasi2 atau seperti notif
//toast, snackbar, alert dialog

//Navigator
//push : dari class A ke class B
//pop : dari class B ke class B (kembali)