import 'package:flutter/material.dart';
import 'package:lesson43/model/Todo.dart';

class TodoController with ChangeNotifier {
  final List<Todo> lst = [
    Todo(id: 0, title: "Swimming", description: "Swimming", date: DateTime.now(), isComplated: true),
    Todo(id: 1, title: "Eating", description: "Eating", date: DateTime.now(), isComplated: true),
  ];


  void add(int i,String title,String description,DateTime date,bool isComplated) {
    lst.add(Todo(id: i, title: title, description: description, date: date, isComplated: isComplated));
    notifyListeners();
  }

  void changeposition(int i) {
    lst[i].isComplated = !lst[i].isComplated;
    notifyListeners();
  }

  void edit( int i,String title,String description) {
    lst[i].title = title;
    notifyListeners();
  }

  void delete(int index) {
    lst.removeAt(index);
    notifyListeners();
  }
}
