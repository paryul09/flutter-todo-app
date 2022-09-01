import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:apna/modals/task_data.dart';
class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function() deleteCallBack;
  final Function(bool?) checkBoxCallBack;
  TaskTile({required this.isChecked, required this.taskTitle,required this.checkBoxCallBack,required this.deleteCallBack});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: deleteCallBack,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkBoxCallBack,
      ),
    );
  }
}
