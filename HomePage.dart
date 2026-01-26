import 'package:flutter/material.dart';
import 'package:mcqapp/SideBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBar(),
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: const Center(
        // Center widget centers its child
        child: Text('Hello, Hrushabh!', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
