import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_july_fl/storages/sqflite_ex/sqflite_crud/sql_functions.dart';

void main() {
  runApp(MaterialApp(
    home: ContactBook(),
  ));
}

class ContactBook extends StatefulWidget {
  const ContactBook({super.key});

  @override
  State<ContactBook> createState() => _ContactBookState();
}

class _ContactBookState extends State<ContactBook> {
  List<Map<String, dynamic>> contacts = [];
  bool isLoading = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My contacts'),
      ),
      body: isLoading
          ? Text(
        'Create new contact',
        style: GoogleFonts.caesarDressing(fontSize: 25),
      )
          : ListView.builder(
          itemCount: contacts.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.person),
                  backgroundColor:
                  Colors.primaries[index % Colors.primaries.length],
                ),
                title: Text(contacts[index]['cname']),
                subtitle: Text(contacts[index]['cnumber']),
                trailing: Wrap(
                  children: [
                    IconButton(onPressed: ()=>showSheet(contacts[index]['id']), icon: Icon(Icons.edit)),
                    IconButton(onPressed: ()=> deleteContact(contacts[index]['id']), icon: Icon(Icons.delete))
                  ],
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showSheet(null),
        child: const Icon(Icons.person_add_alt_1_outlined),
      ),
    );
  }

  final name_controller = TextEditingController();
  final num_controller = TextEditingController();
  void showSheet(int? id) {
    if(id != null){
      final existingcontact=
          contacts.firstWhere((element) => element['id']==id);
      name_controller.text=existingcontact['cname'];
      num_controller.text=existingcontact['cnumber'];
    }
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Container(
            padding: EdgeInsets.only(
                top: 15,
                left: 15,
                bottom: MediaQuery.of(context).viewInsets.bottom + 120),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: name_controller,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: "Name"),
                ),
                TextField(
                  controller: num_controller,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: "Number"),
                ),
                ElevatedButton(
                    onPressed: () {
                      if (id == null) {
                        createContact(
                            name_controller.text, num_controller.text);
                      }
                      if (id != null) {
                        updatecontact(id);
                      }
                      name_controller.text = '';
                      num_controller.text = '';
                      Navigator.of(context).pop();
                    },
                    child:
                    Text(id == null ? "Create contact" : "Update contact"))
              ],
            ),
          );
        });
  }

  Future<void> createContact(String name, String number) async {
    await SQL_FUNCTIONS.addnewContact(name, number);
    readContact_and_refresh_Ui();
  }

  void initstate() {
    readContact_and_refresh_Ui();
    super.initState();
  }

  Future<void> readContact_and_refresh_Ui() async {
    final mycontacts = await SQL_FUNCTIONS.readContacts();
    setState(() {
      contacts = mycontacts;
      isLoading = false;
    });
  }

  Future <void> updatecontact(int id) async{
    await SQL_FUNCTIONS.updateContactt(id,name_controller.text,num_controller.text);
    readContact_and_refresh_Ui();
  }

 Future<void> deleteContact(int id)async {
    await SQL_FUNCTIONS.removeContact(id);
    readContact_and_refresh_Ui();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('successfully deleted')));
 }
}