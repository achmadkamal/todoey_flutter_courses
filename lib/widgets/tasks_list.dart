import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter_courses/models/task_data.dart';
import 'package:todoey_flutter_courses/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          //contoh tanpa menggunakan Consumer
          itemCount: Provider.of<TaskData>(context).tasks.length,
          itemBuilder: (context, index) {
            return TaskTileItem(
              //contoh menggunakan Consumer
              taskTitleItem: taskData.tasks[index].taskName,
              //contoh tidak menggunakan Consumer
              isCheckedItem: Provider.of<TaskData>(context).tasks[index].isDone,
              checkBoxCallBack: (checkBox) {
                taskData.updatingCheckBox(taskData.tasks[index]);
              },
              longPressCallBack: () {
                taskData.deletingTask(taskData.tasks[index]);
              },
            );
          },
        );
      },
    );
  }
}
