import 'package:flutter/material.dart';

class Hive_Reg extends StatelessWidget {
  final name_controller = TextEditingController();
  final email_controller = TextEditingController();
  final pwd_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hive Registration"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Registration Page"),
              TextField(
                controller: name_controller,
                decoration: InputDecoration(border: OutlineInputBorder(),
                    hintText: "Username"
                ),
              ),
              SizedBox(height: 15,),
              TextField(
                controller: email_controller,
                decoration: InputDecoration(border: OutlineInputBorder(),
                    hintText: "E-Mail"
                ),
              ),
              SizedBox(height: 15,),
              TextField(
                controller: pwd_controller,
                decoration: InputDecoration(border: OutlineInputBorder(),
                    hintText: "Password"
                ),
              ),
              MaterialButton(onPressed: (){},
                shape: StadiumBorder(),
                color: Colors.pink,
                child: Text("Register Here"),)
            ],
          ),
        ),
      ),
    );
  }
}