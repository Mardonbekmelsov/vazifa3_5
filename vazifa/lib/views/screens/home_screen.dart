import 'package:flutter/material.dart';
import 'package:lesson43/views/widgets/custom_drawer.dart';

class HomeScreen extends StatefulWidget {
  
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Bosh Sahifa"),
      ),
      drawer: CustomDrawer(
      ),
    );
  }
}
