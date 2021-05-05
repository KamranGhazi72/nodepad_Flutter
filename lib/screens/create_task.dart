import 'package:flutter/material.dart';
import 'package:nodepad_plus/models/task_message_model.dart';

class CreateTask extends StatefulWidget {
  @override
  _CreateTaskState createState() => _CreateTaskState();
}

class _CreateTaskState extends State<CreateTask> {
  bool checkedValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          flexibleSpace: SafeArea(
            child: Container(
              padding: EdgeInsets.only(right: 16),
              child: Row(
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/avatar.jpg'),
                    maxRadius: 20,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Kamran",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          "Online",
                          style: TextStyle(
                              color: Colors.grey.shade600, fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.settings,
                    color: Colors.black54,
                  ),
                ],
              ),
            ),
          ),
        ),
        // body: Stack(
        //   children: [
        //     Padding(
        //       padding: EdgeInsets.symmetric(vertical: 10),
        //       child: ListView.builder(
        //         itemCount: tasks.length,
        //         itemBuilder: (context, index) {
        //           return Padding(
        //             padding: EdgeInsets.symmetric(horizontal: 30),
        //             child: Container(
        //                 child: CheckboxListTile(
        //               activeColor: Colors.indigo[400],
        //               title: Text(tasks[index].taskText),
        //               value: tasks[index].checked,
        //               onChanged: (newValue) {
        //                 setState(() {
        //                   tasks[index].checked = newValue;
        //                 });
        //               },
        //             )),
        //           );
        //         },
        //       ),
        //     )
        //   ],
        // ),
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal)),
                      hintText: 'Write Task Title ... ',
                      helperText:
                          'Keep it short, With it You Can Search this New Task.',
                      labelText: 'Insert Title',
                      prefixIcon: const Icon(
                        Icons.brightness_low,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Show Tasks',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Divider(
                color: Colors.black54,
                height: 10,
                indent: 70,
                endIndent: 70,
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal)),
                      hintText: 'Write Task Detail ... ',
                      labelText: 'New Task',
                      prefixIcon: const Icon(
                        Icons.ballot_outlined,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: ListView.builder(
                      itemCount: 14,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.blue[50]),
                            padding: EdgeInsets.all(16),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'dsiodjsidosio',
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ));
  }
}
