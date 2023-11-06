import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
void main(){
  runApp(MaterialApp(home: Permission_check(),));
}

class Permission_check extends StatefulWidget {
  const Permission_check({super.key});

  @override
  State<Permission_check> createState() => _Permission_checkState();
}

class _Permission_checkState extends State<Permission_check> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(onPressed: ()=>requestCameraPermission(), icon: Icon(Icons.camera_alt_outlined,size: 30,color: Colors.greenAccent,)),
            SizedBox(width: 30,),
            IconButton(onPressed: ()=>requestMultiplePermission(), icon: Icon(Icons.mic,size: 30,color: Colors.blue,)),
            SizedBox(width: 30,),
            IconButton(onPressed: ()=>requestPermissionWithOpenSettings(), icon: Icon(Icons.location_on_outlined,size: 30,color: Colors.red,))
          ],
        ),
      ),
    );
  }

 void requestCameraPermission() async{
   /// status can either be: granted, denied, restricted or permanentlyDenied
   var status = await Permission.camera.status;
   if (status.isGranted) {
     print("Permission is granted");
   } else if (status.isDenied) {
     // We didn't ask for permission yet or the permission has been denied before but not permanently.
     if (await Permission.camera.request().isGranted) {
   // Either the permission was already granted before or the user just granted it.
   print("Permission was granted");
   }
 }

   // You can can also directly ask the permission about its status.
   // if (await Permission.location.isRestricted) {
   //   // The OS restricts access, for example because of parental controls.
   // }
 }
  /// Request multiple permissions at once.
  /// In this case location & storage
 void requestMultiplePermission()async {
   Map<Permission, PermissionStatus> statuses = await [
   Permission.location,
       Permission.storage,
   Permission.phone,
   ].request();
   print("location permission: ${statuses[Permission.location]},"
   "storage permission: ${statuses[Permission.storage]}");
 }
  /// The user opted to never again see the permission request dialog for this
  /// app. The only way to change the permission's status now is to let the
  /// user manually enable it in the system settings.
 void requestPermissionWithOpenSettings() {
   //if (await Permission.speech.isPermanentlyDenied) {
   openAppSettings();
   //}
 }

}

