import 'package:flutter/material.dart';

class ToDoScreen extends StatelessWidget {
  const ToDoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ToDo",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      // body: ListView.builder(
      //     itemCount: 1,
      //     itemBuilder: (ctx, index) {
      //       return ToDoItem(todo: , index: index);
      //     }),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () async {
      //     Map<String, dynamic>? data = await showDialog(
      //         barrierDismissible: false,
      //         context: context,
      //         builder: (ctx) {
      //           return const ToDoAddDialog();
      //         });
      //     if (data != null) {
      //       toDoController.add(data['title']);
      //       setState(() {});
      //     }
      //   },
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
