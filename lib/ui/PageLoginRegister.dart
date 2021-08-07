import 'package:flutter/material.dart';
import 'package:trainingandroidflutter_jvg/ui/PageHomeScreen.dart';

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

                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PageHomeScreen(nUsername: etUsername.text, nPassword: etPassword.text)));
                });
              },
                color: Colors.green,
                child: Text('Submit', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              ),

              SizedBox(height: 10,),
              InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> PageRegister()));

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
              MaterialButton(onPressed: (){},
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
