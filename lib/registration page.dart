import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home:  Signin_page()
  ));
}

class Signin_page extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => Splash3state();

  }



class Splash3state extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('create account'),

      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Image.network('https://cdn0.iconfinder.com/data/icons/phosphor-fill-vol-3/256/key-fill-256.png',
            height: 100,
            width: 100),
            Text('key;)'),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  hintText: 'Your name',
                  helperText: 'please enter your name',
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder()
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'phone',
                  hintText: 'enter your phone number',
                  helperText: 'enter a valid phone number',
                  prefixIcon: Icon(Icons.phone),
                  border: OutlineInputBorder()
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'UserName',
                  hintText: 'Username',
                  helperText: 'eneter your username',
                  prefixIcon: Icon(Icons.account_box_outlined),
                  border: OutlineInputBorder()
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: TextField(
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'password',
                  helperText: 'the password must contai atleast 6 characters',
                  prefixIcon: Icon(Icons.password),
                  border: OutlineInputBorder()
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'confirm your passowrd',
                  hintText: 'confirm passowrd',
                  helperText: 're-enter password to confirm',
                  prefixIcon: Icon(Icons.password),
                  border: OutlineInputBorder()
                ),
              ),
            ),
            ElevatedButton(onPressed: (){}, child: Text('Sign in'))

          ],
        ),
      ),
    );
  }
}