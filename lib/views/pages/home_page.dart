import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: RyMainDrawer(),
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(child: const Text('Home Page'))
    );
  }
}