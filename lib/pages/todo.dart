// ignore: camel_case_types
class Todo{
  String? id;
  String? todoText;
  bool isDone;

Todo({
  required this.id,
  required this.todoText,
  this.isDone = false,
});

static List<Todo>todoList(){
  return(
    [
      Todo(
        id: '1',
        todoText: 'Plan for Sports Meet',
        isDone: true,
      ),
      Todo(
        id: '2',
        todoText: 'Visit Alex at 5pm',
        isDone: true,
      ),
      Todo(
        id: '3',
        todoText: 'Attend Violin Lesson',
        isDone: false,
      ),
      Todo(
        id: '4',
        todoText: 'Buy Groceries',
        isDone: false,
      ),
    ]
  );
}

}
