import 'package:flutter/material.dart';
import 'package:todo/utils/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List todoList = [
    [
      'Make a tutorial',
      false,
    ],
    [
      'Finish the project',
      false,
    ],
    [
      'Write a script',
      true,
    ],
  ];

  void checkboxChanged(bool? value, int index) {
    setState(() {
      todoList[index][1] = !todoList[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: const Text('TO DO'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          final todo = todoList[index];
          return TodoTile(
              task: todo[0],
              taskCompleted: todo[1],
              onChanged: (value) => checkboxChanged(value, index));
        },
      ),
    );
  }
}
