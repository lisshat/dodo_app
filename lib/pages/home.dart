import 'todo_item.dart';
import 'package:flutter/material.dart';
import 'colors.dart';
import 'todo.dart' as Todo;

class HomeScreen extends StatelessWidget {
  HomeScreen ({super.key});

final todosList = Todo.Todo.todoList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ddlightpurple,
      appBar: _buildAppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          createNewTask();
          print('Add new task');
        },
        child: const Icon(
          Icons.add,
          color: ddmuddypurple,
          size: 30,
        ),
        backgroundColor: ddlightyellow,
      ),
      body: Container(
        child: Align(
         alignment: Alignment.topCenter,
         child: Container(
          margin: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              _currentTasks(),
               SizedBox(height: 20), 

               for (Todo.Todo todo in todosList)
                  ToDoItem(todo: todo,),

             
            ],
          ), 
        ),
        ),
      )
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: dddarkerrrpurple,
      title:
          const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, 
        children: [
        Icon(
          Icons.menu,
          color: ddlightpurple,
          size: 30,
        ),
        Icon(
          Icons.person,
          color: ddlightpurple,
          size: 30,
        )
      ]),
    );
  }
  
  void createNewTask() {
    
  }
}

class _currentTasks extends StatelessWidget {
  const _currentTasks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Current Tasks',
      style: TextStyle(
        color: ddlightyellow,
        fontSize: 27,
        decoration: TextDecoration.underline,
        decorationColor: ddlightyellow,
        fontWeight: FontWeight.bold,
        fontFamily: 'Manjariregular',
      ),
    );
  }
}
