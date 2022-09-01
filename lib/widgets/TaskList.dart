import 'package:apna/modals/task.dart';
import 'package:flutter/material.dart';
import 'package:apna/widgets/TaskTile.dart';
import 'package:provider/provider.dart';
import 'package:apna/modals/task_data.dart';
class TaskList extends StatelessWidget {
  const TaskList(List<Task> tasks, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, taskData, Widget? child) {
        return ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            final task = taskData.tasks[index];
            return TaskTile(
                isChecked: task.isChecked,
                taskTitle: task.title,
                checkBoxCallBack: (checkboxState) {
                  taskData.updateTask(task);
                },
                deleteCallBack: (){
                  taskData.deleteTask(task);
                },
            );
          },
          itemCount: taskData.taskSize,
        );
      },
    );
  }
}



