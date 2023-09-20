import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_july_fl/home.dart';
import 'package:project_july_fl/registration%20page.dart';
import 'package:project_july_fl/stateful_login.dart';

void main() {
  runApp(MaterialApp(
    home: Login_page(),
  ));
}

class Login_page extends StatefulWidget {

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  String username = 'admin';

  String password = 'abcdef';

  final uname_controller = TextEditingController();

  final pass_controller = TextEditingController();
  final formkey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: formkey,
          child: Column(
            children: [
              Image.network(
                  'https://cdn0.iconfinder.com/data/icons/phosphor-fill-vol-3/256/key-fill-256.png',
                  height: 100,
                  width: 100),
              Text('key;)', style: GoogleFonts.roboto(color: Colors.black)),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  controller: uname_controller,
                  decoration: InputDecoration(
                      labelText: 'UserName',
                      hintText: 'UserName',
                      helperText: 'UserName must be an email',
                      prefixIcon: Icon(Icons.account_box_outlined),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)))),
                  validator: (uname){
                    if(uname!.isEmpty || uname.contains('@') || uname.contains('.com')){
                      return 'Invalid username';
                    }else{
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: TextFormField(
                  controller: pass_controller,
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Password',
                      helperText: 'Password must contain atleast 6 characters',
                      prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0))),
                  validator: (pass){
                    if(pass!.isEmpty || pass.length<6){
                      return 'invalid password';
                    }else{
                      return null;
                    }
                  }
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    final valid= formkey.currentState!.validate();
                    if(valid){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Home()));
                    }
                    // if (username == uname_controller.text &&
                    //     password == pass_controller.text) {
                    //   Navigator.of(context)
                    //       .push(MaterialPageRoute(builder: (context) => Home()));
                    // } else {
                    //   ScaffoldMessenger.of(context).showSnackBar(
                    //       SnackBar(content: Text('invalid credentials')));
                    //}
                  },
                  child: Text('Login')),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  child: Text('New here?? click here to login'))
            ],
          ),
        ),
      ),
    );
  }
}
