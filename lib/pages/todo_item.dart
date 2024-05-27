import '../theme/colors.dart';
import 'todo.dart';
import 'package:flutter/material.dart';

class ToDoItem extends StatelessWidget {
  final Todo todo;
  const ToDoItem({super.key,required this.todo});
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25),
      child: Container(
          margin: EdgeInsets.only(bottom: 20),
          child: ListTile(
            onTap: () {
              print('Tapped');
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            tileColor: ddmuddypurple,
            leading: Container(
              width: 40,
              child: Icon(
               todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
                color: ddlightyellow,
                size: 30,
              ),
            ),
            title: Text(
              todo.todoText!,
              style: TextStyle(
                color: ddlightyellow,
                fontFamily: 'Manjariregular',
                fontSize: 20,
                decoration: todo.isDone? TextDecoration.lineThrough:null,
                decorationColor: ddlightyellow,
              ),
            ),
          )),
    );
  }
}
