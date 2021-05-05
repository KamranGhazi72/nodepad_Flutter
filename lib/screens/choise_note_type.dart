import 'package:flutter/material.dart';
import 'package:nodepad_plus/screens/create_note.dart';
import 'package:nodepad_plus/screens/create_task.dart';

class ChoiseNoteType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black87,
        ),
        title: Text(
          'Choise The Note You Want',
          style: TextStyle(color: Colors.black87),
        ),
        backgroundColor: Colors.white,
        bottomOpacity: 0.5,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      spreadRadius: 3, blurRadius: 3, color: Colors.black12),
                ],
                borderRadius: BorderRadius.circular(15)),
            margin: EdgeInsets.all(25),
            child: OutlineButton(
              textColor: Colors.blue,
              padding: EdgeInsets.all(30),
              child: Text(
                "New NoteBook",
                style: TextStyle(fontSize: 20.0),
              ),
              highlightedBorderColor: Colors.black45,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CreateNote()));
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      spreadRadius: 3, blurRadius: 3, color: Colors.black12),
                ],
                borderRadius: BorderRadius.circular(15)),
            margin: EdgeInsets.all(15),
            child: OutlineButton(
              textColor: Colors.red,
              padding: EdgeInsets.all(30),
              child: Text(
                "New Task",
                style: TextStyle(fontSize: 20.0),
              ),
              highlightedBorderColor: Colors.black45,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CreateTask()));
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      spreadRadius: 3, blurRadius: 3, color: Colors.black12),
                ],
                borderRadius: BorderRadius.circular(15)),
            margin: EdgeInsets.all(25),
            child: OutlineButton(
              textColor: Colors.green,
              padding: EdgeInsets.all(30),
              child: Text(
                "New Reminder",
                style: TextStyle(fontSize: 20.0),
              ),
              highlightedBorderColor: Colors.black45,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              onPressed: () {},
            ),
          ),
        ],
      )),
    );
  }
}
