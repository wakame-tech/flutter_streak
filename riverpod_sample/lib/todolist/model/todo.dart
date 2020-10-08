import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';
part 'todo.g.dart';

@freezed
abstract class Todo implements _$Todo {
  const Todo._();

  const factory Todo({
    @required String uid,
    @required String title,
    @Default(false) bool done,
  }) = _Todo;

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
}
