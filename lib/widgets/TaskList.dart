import 'package:flutter/material.dart';
import 'package:apna/widgets/TaskTile.dart';
import 'package:apna/modals/task.dart';

class TaskList extends StatefulWidget {
  final List<Task>tasks;
  TaskList({required this.tasks});
  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return TaskTile(
            isChecked: widget.tasks[index].isChecked,
            taskTitle: widget.tasks[index].title,
          checkBoxCallBack:(checkboxState){
              setState((){
                   widget.tasks[index].toggle();
              });
          }
        );
      },
      itemCount: tasks.length,
    );
  }
}


