import 'package:riverpod_sample/model/todo.dart';

abstract class TodoListRepository {
  Future<List<Todo>> getTodoList();
  Future<void> updateTodoList(List<Todo> todoList);
}

class TodoListRepositoryImpl implements TodoListRepository {
  List<Todo> _todoList = [];

  @override
  Future<List<Todo>> getTodoList() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    return _todoList;
  }

  @override
  Future updateTodoList(List<Todo> todoList) async {
    await Future.delayed(const Duration(milliseconds: 300));
    _todoList = todoList;
  }
}
