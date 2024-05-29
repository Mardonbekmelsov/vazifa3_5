import 'package:flutter/material.dart';
import 'package:lesson43/model/todo.dart';

class TodoController with ChangeNotifier {
  final List<ToDo> _lst = [
    ToDo(id: 0, title: "Swimming", description: "Swimming", date: DateTime.now(), isComplated: true),
    ToDo(id: 1, title: "Eating", description: "Eating", date: DateTime.now(), isComplated: true),
  ];

  List<ToDo> get lst {
    return [..._lst];
  }


  void add(int i,String title,String description,DateTime date,bool isComplated) {
    _lst.add(ToDo(id: i, title: title, description: description, date: date, isComplated: isComplated));
  }

  void changeposition(int i) {
    _lst[i].isComplated = !_lst[i].isComplated;
  }

  void edit(int i,String title,String description) {
    _lst[i].title = title;
    _lst[i].description = description;
  }

  void delete(int index) {
    _lst.removeAt(index);
  }
}
