import 'package:flutter/material.dart';
import 'package:lesson43/model/todo.dart';

// ignore: must_be_immutable
class ToDoItem extends StatefulWidget {
  int index;
  final Todo todo;
  ToDoItem({super.key,required this.todo, required this.index});

  @override
  // ignore: no_logic_in_create_state
  State<ToDoItem> createState() => _ToDoItemState();
}

class _ToDoItemState extends State<ToDoItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          
        });
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25), color: Colors.yellow),
          child: ListTile(
            leading: widget.todo.isComplated
                ? const Icon(
                    Icons.circle_outlined,
                    color: Colors.blue,
                  )
                : const Icon(
                    Icons.check_circle,
                    color: Colors.green,
                  ),
            title: Text(widget.todo.title,
                style: widget.todo.isComplated
                    ? const TextStyle(fontSize: 20, fontWeight: FontWeight.w500)
                    : const TextStyle(
                        decoration: TextDecoration.lineThrough,
                        fontSize: 20,
                        fontWeight: FontWeight.w500)),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                    onPressed: () {
                      // TodoNotifires.of(context).edit(widget.index, , description)
                    },
                    icon: const Icon(
                      Icons.edit,
                      color: Colors.blue,
                    )),
                IconButton(
                    onPressed: () {
                    },
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
