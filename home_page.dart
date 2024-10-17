import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({required this.title});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? _selectedValue;
  int _currentIndex = 0; // Define _currentIndex for BottomNavigationBar

  @override
  void initState() {
    super.initState();
    _selectedValue = null;
  }

  final List<Widget> _children = [
    Center(child: Text('Home Page')),
    Center(child: Text('Daily Planner Page')),
    Center(child: Text('Explore Page')),
    Center(child: Text('Chat Page')),
    Center(child: Text('Post Page')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF007BFF),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            // Add your menu button press logic here
          },
        ),
        title: Text('Welcome'),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              // Add your profile button press logic here
            },
          ),
        ],
      ),
      body: _children[_currentIndex], // Display the selected page content
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Daily Planner',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.post_add),
            label: 'Post',
          ),
        ],
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
      ),
      body: Center(
        child: Text('This is the Profile Page'),
      ),
    );
  }
}
