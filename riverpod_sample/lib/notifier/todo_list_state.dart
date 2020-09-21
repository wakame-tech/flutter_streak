import 'package:riverpod_sample/external/todo_service.dart';
import 'package:riverpod_sample/model/todolist/todo.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:uuid/uuid.dart';

class TodoListNotifier extends StateNotifier<List<Todo>> with LocatorMixin {
  TodoListNotifier({this.todoListService, List<Todo> initial: const []})
      : super(initial);

  TodoListService todoListService;

  Future<List<Todo>> getTodoList() async {
    return todoListService.getTodoList();
  }

  Future addTodo(String title) async {
    final todo = Todo(title: title, uid: Uuid().v4());
    state = [...state, todo];
    await todoListService.updateTodoList(state);
  }

  Future deleteTodo(String id) async {
    state = state.where((todo) => todo.uid != id).toList();
    await todoListService.updateTodoList(state);
  }

  Future toggleDone(String id) async {
    state = [
      for (final todo in state)
        todo.uid == id ? todo.copyWith(done: !todo.done) : todo
    ];
    await todoListService.updateTodoList(state);
  }
}
