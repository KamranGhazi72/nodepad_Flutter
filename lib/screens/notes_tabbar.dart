import 'package:flutter/material.dart';
import 'package:nodepad_plus/models/node_model.dart';
import 'package:nodepad_plus/screens/note_list.dart';

class NoteTabBarMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(20.0),
          child: Container(
            height: 350,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(7),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12, blurRadius: 5, spreadRadius: 2)
                ]),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Least Notes',
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (_) => NoteList()));
                          },
                          child: Text(
                            'Show All',
                            style: TextStyle(
                                color: Colors.blueAccent[200],
                                fontWeight: FontWeight.w600,
                                fontSize: 14),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 9,
                    child: Column(children: [
                      SizedBox(
                        height: 290,
                        child: ListView.builder(
                            padding: const EdgeInsets.all(8),
                            itemCount: notes.length,
                            itemBuilder: (BuildContext context, int index) {
                              Notes note = notes[index];
                              return Padding(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1, color: Colors.blueGrey[50]),
                                      color: Color(0xFFF4FBFF),
                                      borderRadius: BorderRadius.circular(7)),
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(right: 5),
                                          child: Container(
                                            decoration: BoxDecoration(),
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                5,
                                            child: Text(
                                              note.title,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          child: Container(
                                            child: Text(
                                              note.description,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 13),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                      )
                    ]),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
