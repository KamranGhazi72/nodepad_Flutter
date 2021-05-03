import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'screens/choise_note_type.dart';
import 'screens/create_note.dart';
import 'screens/notes_tabbar.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(debugShowCheckedModeBanner: false, home: MyApp());
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            toolbarHeight: 200,
            elevation: 0,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Good Morning Kamran',
                  style: TextStyle(
                      color: Colors.blue[400],
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            actions: [
              IconButton(
                iconSize: 70,
                icon: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/avatar.jpg'),
                  radius: 60,
                ),
                onPressed: () {},
              )
            ],
            bottom: TabBar(
                indicatorColor: Colors.lime,
                indicatorWeight: 5.0,
                labelColor: Colors.black87,
                labelStyle:
                    TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                labelPadding: EdgeInsets.only(top: 10),
                unselectedLabelColor: Colors.grey,
                unselectedLabelStyle: TextStyle(fontSize: 13),
                tabs: [
                  Tab(
                    text: 'Notes',
                    icon: Icon(
                      Icons.notes_rounded,
                      color: Colors.black54,
                      size: 30,
                    ),
                    iconMargin: EdgeInsets.only(bottom: 10.0),
                  ),
                  //child: Image.asset('images/android.png'),

                  Tab(
                    text: 'Task',
                    icon: Icon(
                      Icons.ballot_outlined,
                      color: Colors.black54,
                      size: 30,
                    ),
                    iconMargin: EdgeInsets.only(bottom: 10.0),
                  ),
                  Tab(
                    text: 'Reminder',
                    icon: Icon(
                      Icons.alarm_on_rounded,
                      color: Colors.black54,
                      size: 30,
                    ),
                    iconMargin: EdgeInsets.only(bottom: 10.0),
                  ),
                ])),
        body: TabBarView(
          children: [
            Center(child: NoteTabBarMain()),
            Center(
                child: Text(
              'This is Cake Tab',
              style: TextStyle(fontSize: 32),
            )),
            Center(
                child: Text(
              'This is Radio Tab',
              style: TextStyle(fontSize: 32),
            ))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add_outlined),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ChoiseNoteType()));
          },
        ),
      ),
    );
  }
}

void _settingModalBottomSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
          child: Wrap(
            children: <Widget>[
              ListTile(
                  leading: Icon(Icons.music_note),
                  title: Text('Music'),
                  onTap: () => {}),
              ListTile(
                leading: Icon(Icons.videocam),
                title: Text('Video'),
                onTap: () => {},
              ),
            ],
          ),
        );
      });
}
