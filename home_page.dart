import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({required this.title});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? _selectedValue;

  @override
  void initState() {
    super.initState();
    _selectedValue = null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {}, // Add your menu button press logic here
        ),
        title: Text('Welcome'),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {}, // Add your profile button press logic here
          ),
        ],
      ),
      body: Center(
        child: Text('Home Page'),
      ),
    );
  }
}
