import 'package:flutter/material.dart';

class TaskTileItem extends StatelessWidget {
  final bool isCheckedItem;
  final String taskTitleItem;
  final Function checkBoxCallBack;
  final Function longPressCallBack;
  TaskTileItem({this.isCheckedItem, this.taskTitleItem, this.checkBoxCallBack, this.longPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitleItem,
        style: TextStyle(
          fontSize: 18.0,
          decoration: isCheckedItem ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isCheckedItem,
        onChanged: checkBoxCallBack,
      ),
      onLongPress: longPressCallBack,
    );
  }
}
