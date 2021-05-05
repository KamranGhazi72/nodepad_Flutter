class Tasks {
  int id;
  String taskText;
  bool checked;

  Tasks({this.id, this.taskText, this.checked});
}

List<Tasks> tasks = [
  Tasks(id: 1, taskText: 'First Task', checked: false),
  Tasks(id: 2, taskText: 'secend Task', checked: true),
  Tasks(id: 3, taskText: 'third Task', checked: false),
  Tasks(
      id: 4,
      taskText:
          'fourth Task fourth Taskfourth Taskfourth Taskfourth Task fourth Task fourth Task fourth Task fourth Task',
      checked: true),
  Tasks(id: 5, taskText: 'fifth Task', checked: true),
  Tasks(id: 6, taskText: 'sixth Task', checked: false),
  Tasks(id: 7, taskText: 'seventh Task', checked: true),
];
