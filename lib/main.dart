import 'package:flutter/material.dart';
import 'screens/notes_tabbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
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
                      backgroundImage: NetworkImage(
                          'https://image.freepik.com/free-vector/illustration-stylish-young-man-avatar-man-profile_15870-706.jpg'),
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
          ),
        ),
      ),
    );
  }
}
