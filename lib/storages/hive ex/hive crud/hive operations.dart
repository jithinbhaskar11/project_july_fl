import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter;
  await Hive.openBox('todo_box');
  runApp(MaterialApp(
    home: HiveTodo(),
  ));
}

class HiveTodo extends StatefulWidget {
  const HiveTodo({super.key});

  @override
  State<HiveTodo> createState() => _HiveTodoState();
}

class _HiveTodoState extends State<HiveTodo> {
  List<Map<String, dynamic>> task = [];/// to store values from hive
  final my_box = Hive.box('todo_box'); ///hive object
  void initState() {  ///for reading and refreshing ui initially
    readTask_refreshUi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.yellow[600],
        title: Text('My Notes'),
      ),
      drawer:Drawer(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black87
          ),
          child: ListView(
            children: [
              ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage('assets/images/pichai.jpeg')),
                title: Text('Jithin',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                subtitle: Text('jb007@gmail.com',style: TextStyle(color: Colors.white,fontSize: 10),),
                trailing: Icon(Icons.edit, color: Colors.white,),
              ),
              SizedBox(height: 30,),
              Divider(),
              ListTile(
                leading: Icon(Icons.person,color: Colors.white,),
                title: Text('Account',style: TextStyle(color: Colors.white),),
                trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 10,),
              ),
              ListTile(
                leading: Icon(Icons.star,color: Colors.white,),
                title: Text('Starred',style: TextStyle(color: Colors.white),),
                trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 10,),
              ),
              ListTile(
                leading: Icon(Icons.notifications,color: Colors.white,),
                title: Text('Reminders',style: TextStyle(color: Colors.white),),
                trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 10,),
              ),
              ListTile(
                leading: Icon(Icons.archive,color: Colors.white,),
                title: Text('Archived',style: TextStyle(color: Colors.white),),
                trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 10,),
              ),
              ListTile(
                leading: Icon(Icons.settings,color: Colors.white,),
                title: Text('Settings',style: TextStyle(color: Colors.white),),
                trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 10,),
              ),
            ],
          ),
        ),
      ) ,


      body: task.isEmpty
          ? Center(child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.add_circle,color: Colors.grey[700],size: 100,),
          SizedBox(width: 20,),
          Text('Add notes',style: TextStyle(fontSize: 80,fontWeight: FontWeight.bold,color: Colors.grey[700]),)
        ],
      ))
          : GridView.builder(
        itemCount: task.length,
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Card(
              color: Colors.black12,
             elevation: 5,
             margin: EdgeInsets.all(16),
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(30),
               side: BorderSide(color: Colors.white)
             ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(task[index]['taskname'],style: GoogleFonts.aBeeZee(fontSize:20,fontWeight: FontWeight.bold,color: Colors.yellow),),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(task[index]['taskdesc'],style: GoogleFonts.montserrat(fontSize:20,color: Colors.white)),
                  Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(onPressed: ()=>showAlertbox(task[index]['id']), icon: Icon(Icons.edit,color: Colors.white,)),
                          SizedBox(width: 30),
                          IconButton(onPressed: ()=> deletetask(task[index]['id']), icon: Icon(Icons.delete,color: Colors.red,)),

                        ],

                      )),
                  ///*******
                  // Text(
                  //   '${DateTime.now().hour}:${DateTime.now().minute}',style: TextStyle(color: Colors.white,),textAlign: TextAlign.left,
                  // ),
                ],
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showAlertbox(null),
        child: Icon(Icons.add),
        backgroundColor: Colors.yellow[600],
      ),
    );
  }

  final title_cntrl = TextEditingController();
  final descr_cntrl = TextEditingController();
  void showAlertbox(int? key) { //key -> task[index]['id']
    ///key is similar to id in sqflite

    if(key!=null){
      final existimg_task= task.firstWhere((element) => element['id']==key);
      title_cntrl.text=existimg_task['taskname'];
      descr_cntrl.text=existimg_task['taskdesc'];
    }
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.black87,
            content: Card(color: Colors.black87,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey,
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)
                        ), hintText: "Title",hintStyle: TextStyle(color: Colors.white),
                      labelText: 'Title',labelStyle: TextStyle(color: Colors.white),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.yellow)
                      )
                    ),
                    controller: title_cntrl,
                  ),
                  SizedBox(height: 20,),
                  TextField(
                    decoration: InputDecoration(
                        filled:true ,
                        fillColor: Colors.grey,
                        border: OutlineInputBorder(), hintText: "Content",hintStyle: TextStyle(color: Colors.white),
                      labelText: 'Content',labelStyle: TextStyle(color: Colors.white),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.yellow)
                      )
                    ),

                    controller: descr_cntrl,
                    maxLines: 5,
                  )
                ],
              ),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    if (title_cntrl.text != "" && descr_cntrl.text != "") {
                      createTask({
                        'tname': title_cntrl.text.trim(),
                        'tcontent': descr_cntrl.text.trim()
                      });
                    }
                    title_cntrl.text = "";
                    descr_cntrl.text = "";
                    Navigator.pop(context);
                  },
                  child: Text('Create Task',style: TextStyle(color: Colors.yellow[700]),)),

              TextButton(onPressed: () {
                updatetask(key,{'tname':title_cntrl.text.trim(), 'tcontent':descr_cntrl.text.trim()});
              }, child: Text('Update Task',style: TextStyle(color: Colors.yellow[700]),)),


              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Cancel',style: TextStyle(color: Colors.yellow[700]),)),
            ],
          );
        });
  }

  Future<void> createTask(Map<String, dynamic> mytask) async { ///replaced map with my task and string with dynamic
    ///create this object my box on top
    await my_box.add(mytask);
    readTask_refreshUi(); ///create this with initstate above build{}
  }

  void readTask_refreshUi() { ///read data from hive and assign to list 'task'
    final task_from_hive=my_box.keys.map((key) { ///fetch all the keys from hive box
      final value=my_box.get(key); ///single map curresponding to the key
      return{
        'id':key,
        'taskname':value['tname'] ,  ///tname is key from hive
        'taskdesc':value['tcontent']
      };
    }).toList();

    setState(() {
      task=task_from_hive.reversed.toList();
    });
  }

 Future <void> updatetask(int? key, Map<String, dynamic> updatedtask)async {
    await my_box.put(key, updatedtask);
    readTask_refreshUi();
    Navigator.pop(context);
 }

 Future<void> deletetask(int key) async{
    await my_box.delete(key);
    readTask_refreshUi();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Successfully deleted')));
 }
}