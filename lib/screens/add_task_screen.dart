import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter_courses/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskInput = 'Empty task';

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18.0, color: Colors.lightBlueAccent),
            ),
            TextField(
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18.0),
              onChanged: (newValue) {
                newTaskInput = newValue;
              },
            ),
            FlatButton(
              child: Text(
                'Add',
                style: TextStyle(fontSize: 18.0, color: Colors.white),
              ),
              color: Colors.lightBlueAccent,
              onPressed: () {
                Provider.of<TaskData>(context, listen: false)
                    .addTask(newTaskInput);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
