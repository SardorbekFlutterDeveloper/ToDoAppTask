import 'dart:async';

import 'package:bloc/bloc.dart';

enum TodoEvent { loadTodos }

class TodoBloc extends Bloc<TodoEvent, List<String>> {
  TodoBloc() : super([]);

  @override
  Stream<List<String>> mapEventToState(TodoEvent event) async* {
    if (event == TodoEvent.loadTodos) {
      // Fetch todos from the database
      List<String> todos = await fetchTodosFromDatabase();
      yield todos;
    }
  }

  Future<List<String>> fetchTodosFromDatabase() async {
    // Implement the logic to fetch todos from the SQLite database
    return ['Task 1', 'Task 2', 'Task 3'];
  }
}
