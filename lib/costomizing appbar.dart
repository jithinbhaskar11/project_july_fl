import 'package:flutter/material.dart';
import 'package:project_july_fl/listview%20example/listview%20builder.dart';
import 'package:project_july_fl/listview%20example/listview%20seperator.dart';
import 'package:project_july_fl/listview%20example/listview2.dart';
import 'package:project_july_fl/listview%20example/listview_constructor.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,

    ///to remove debug icon
    theme: ThemeData(primarySwatch: Colors.teal),
    home: Costum_appbar(),
  ));
}

class Costum_appbar extends StatelessWidget {
  const Costum_appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(       ///wrap with widget and change to default tab controller and give length
      ///as number of tabs.
      length: 4,
      child: Scaffold(
        appBar: AppBar(
            title: Text('WhatsApp'),
            actions: [
              Icon(Icons.camera_alt_outlined),
              SizedBox(
                width: 15,
              ),
              Icon(Icons.search),
              SizedBox(
                width: 15,
              ),
              PopupMenuButton(itemBuilder: (context) {
                return [
                  PopupMenuItem(child: Text('New group')),
                  PopupMenuItem(child: Text('New broadcast')),
                  PopupMenuItem(child: Text('Linked devices')),
                  PopupMenuItem(child: Text('Starred messages')),
                  PopupMenuItem(child: Text('Payments')),
                  PopupMenuItem(child: Text('Settings'))
                ];
              })
            ],
            bottom: PreferredSize(
                child: Container(
                  child: TabBar(
                    tabs: [
                      Tab(child: Container(),
                        icon: Icon(Icons.people),
                      ),
                      Tab(
                        text: 'Chats',
                      ),
                      Tab(
                        text: 'Updates',
                      ),
                      Tab(
                        text: 'Calls',
                      )
                    ],
                  ),
                ),
                preferredSize: Size.fromHeight(AppBar().preferredSize.height))),
        body: TabBarView(
          children: [ListView1(),Listview2(),Listview_seperated(),Listview_builder()],///slecting screen for each tabs
        ),
      ),
    );
  }
}
