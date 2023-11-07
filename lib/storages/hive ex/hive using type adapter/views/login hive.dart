import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:project_july_fl/storages/hive%20ex/hive%20using%20type%20adapter/database/hivedb.dart';
import 'package:project_july_fl/storages/hive%20ex/hive%20using%20type%20adapter/views/reg%20hive.dart';

import '../model/users.dart';
import 'home hive.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox<Users>("users");
  Hive.registerAdapter(UsersAdapter());
  runApp(GetMaterialApp(
    home: Hive_Login(),
  ));
}

class Hive_Login extends StatelessWidget {
  final email_controller = TextEditingController();
  final pass_controller = TextEditingController();

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
              Text("Login Page"),
              SizedBox(height: 15),
              TextField(
                controller: email_controller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "E-Mail"),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                controller: pass_controller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "Password"),
              ),
              MaterialButton(
                onPressed: () async{
                  final users= await HiveDB.instance.getUsers();
                  validateLogin(users);
                },
                shape: StadiumBorder(),
                color: Colors.pink,
                child: Text("Login Here"),
              ),

              TextButton(
                  onPressed: () {
                    Get.to(Hive_Reg());
                  },
                  child: Text("Not a user,Register Here!!!"))
            ],
          ),
        ),
      ),
    );
  }

 Future <void> validateLogin(List<Users> users) async {
    final email= email_controller.text.trim();
    final pwd= pass_controller.text.trim();
    bool userFound=false;

    if(email!='' && pwd!= ''){
      await Future.forEach(users, (user){
        if(user.email== email && user.password==pwd){
          userFound=true;
        }else{
          userFound=false;
        }
      });
      if(userFound==true){
        Get.offAll(()=>Hive_Home(email:email));
        Get.snackbar('sucess', 'Login sucess',backgroundColor: Colors.green);
      }else{
        Get.snackbar('Error', 'Login failed',backgroundColor: Colors.red);
      }
    }else{
      Get.snackbar('Error', 'Fields must not be empty');
    }
 }
}