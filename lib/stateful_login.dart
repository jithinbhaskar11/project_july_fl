import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_july_fl/login%20page.dart';

void main(){
  runApp(MaterialApp(
    home: Login(),
  ));
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formkey=GlobalKey<FormState>();
  String? passw;
  bool passwordhidden=true;//means password is hidden
  bool cpasshidden=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Form(
            key: formkey,
            child: Column(
              children: [
                Image.network(
                  'https://cdn0.iconfinder.com/data/icons/phosphor-fill-vol-3/256/key-fill-256.png',
                  height: 100,
                  width: 100,
                ),
                Text(
                  'key:)',
                  style: GoogleFonts.roboto(color: Colors.black),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Name',
                      hintText: 'Name',
                      helperText: 'Please enter your name',
                      border: OutlineInputBorder()
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Phone',
                      hintText: 'Phone',
                      helperText: 'Enter your phone',
                      border: OutlineInputBorder()
                    ),
                    validator: (phone){
                      if(phone!.isEmpty ||  phone.length!=10){
                        return 'invalid phone number';
                      }else{
                        return null;
                      }
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Username',
                        helperText: 'UserName',
                        hintText: 'username must be an email',
                        border: OutlineInputBorder()),
                    validator: (uname) {
                      if (uname!.isEmpty ||
                          !uname.contains('@') ||
                          !uname.contains('.com')) {
                        return 'invalid credentials';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    obscuringCharacter: "*",
                    obscureText: passwordhidden,
                    validator: (password) {
                      passw = password;
                      if (password!.isEmpty || password.length < 6) {
                        return 'Password must contain atleast 6 characters';
                      } else {
                        return null;
                      }},
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                if(passwordhidden == true){
                                  passwordhidden = false;
                                }else{
                                  passwordhidden = true;
                                }
                              });
                            },
                            icon: Icon(passwordhidden == true
                                ? Icons.visibility_off_sharp
                                : Icons.visibility)),
                        border: OutlineInputBorder(),
                        hintText: 'Password',
                    labelText: 'Password',
                    helperText: 're_enter password'),
                  ),
                ),
                Padding( padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    validator: (cpassword) {
                      if (cpassword!.isEmpty || cpassword != passw) {
                        return 'Password must be same';
                      } else {
                        return null;
                      }
                    },
                    obscureText: cpasshidden,
                    obscuringCharacter: "*",
                    decoration:  InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Password',
                        suffixIcon: IconButton(onPressed: (){
                          setState(() {
                            if(cpasshidden ==true){
                              cpasshidden = false;
                            }else{
                              cpasshidden= true;
                            }
                          });
                        },icon: Icon(cpasshidden== true?
                        Icons.visibility_off_sharp:Icons.visibility))),
                  ),
                ),

                ElevatedButton(onPressed: (){
                  final valid=formkey.currentState!.validate();
                  if(valid){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login_page()));
                  }
                }, child: Text('Login'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
