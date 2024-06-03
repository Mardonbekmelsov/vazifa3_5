import 'package:flutter/material.dart';
import 'package:lesson43/views/screens/note_screen.dart';
import 'package:lesson43/views/screens/todo_screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 4 / 4,
      ),
      children: [
        InkWell(
          onTap: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => const ToDoScreen()));
          },
          child: Card(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 32),
              width: double.infinity,
              child: const Center(
                child: Text(
                  "Todos",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => const NoteScreen()));
          },
          child: Card(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 32),
              width: double.infinity,
              child: const Center(
                child: Text(
                  "Notes",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
