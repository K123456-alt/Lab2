// // import 'package:lab2_todo/todo.dart';

// // void main(){
  
// //   Todo task1 = Todo(id: 1,title:  'Купить продукты');
// //   Todo task2 = Todo(id: 2,title:  'Сделай зарядку');
// //   task1.complete();
// //   print(task1);
// //   print(task2);

// // }
// import 'dart:io';
// void main(){
//   stdout.write('Введите что-нибудь: ');
//   String? input = stdin.readLineSync();
//   print('Вы ввели: $input');

// }

import 'dart:io';
import 'package:lab2_todo/todo.dart';
void printMenu(){
  print('');
  print('ToDo список');
  print('add    - добавил задачу');
  print('list   - показать все задачи');
  print('done   - отметить выполненной');
  print('delete   - удалить задачу');
  print('exit   - выйти');

}
void addTodo(List<Todo> todos){
  stdout.write('Название задачи: ');
  String? input = stdin.readLineSync();
  if (input == null || input.trim().isEmpty){
    print('Ошибка: название не может быть пустым ');
    return;
  }
  int newId = todos.isEmpty ? 1 : todos.last.id + 1;
  todos.add(Todo(id: newId, title: input.trim()));
  print('Задача добавлена!');
}