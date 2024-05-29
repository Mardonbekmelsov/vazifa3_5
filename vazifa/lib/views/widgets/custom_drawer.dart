import 'package:flutter/material.dart';
import 'package:lesson43/views/screens/home_screen.dart';
import 'package:lesson43/views/screens/note_screen.dart';
import 'package:lesson43/views/screens/todo_screens.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const DrawerHeader(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "MENYU",
                ),
              ],
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (ctx) {
                    return const HomeScreen();
                  },
                ),
              );
            },
            title: const Text(
              "Bosh sahifa",
            ),
            trailing: const Icon(
              Icons.keyboard_arrow_right,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) {
                    return  const ToDoScreen();
                  },
                ),
              );
            },
            title: const Text(
              "ToDo",
            ),
            trailing: const Icon(
              Icons.keyboard_arrow_right,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) {
                    return  const NoteScreen();
                  },
                ),
              );
            },
            title: const Text(
              "Note",
            ),
            trailing: const Icon(
              Icons.keyboard_arrow_right,
            ),
          ),
        ],
      ),
    );
  }
}
