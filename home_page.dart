import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({required this.title});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0; // Define _currentIndex for BottomNavigationBar

  final List<Widget> _children = [
    Center(child: Text('Home Page')),
    Center(child: Text('Daily Planner Page')),
    Center(child: Text('Explore Page')),
    Center(child: Text('Chat Page')),
    Center(child: Text('Post Page')),
  ];

  // Function to handle menu item selection
  void _onMenuItemSelected(String value) {
    switch (value) {
      case 'settings':
        // Handle settings action
        print('Settings selected');
        break;
      case 'dark_mode':
        // Handle dark mode action
        print('Dark Mode selected');
        break;
      case 'contact_us':
        // Handle contact us action
        print('Contact Us selected');
        break;
      case 'logout':
        // Handle log out action
        print('Log Out selected');
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF007BFF),
        title: Text('Welcome'),
        leading: IconButton(
          icon: Icon(Icons.person),
          onPressed: () {
            // Add your profile button press logic here
            print('Profile button pressed');
          },
        ),
        actions: [
          PopupMenuButton<String>(
            icon: Icon(Icons.menu),
            onSelected: _onMenuItemSelected,
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem<String>(
                  value: 'settings',
                  child: Text('Settings'),
                ),
                PopupMenuItem<String>(
                  value: 'dark_mode',
                  child: Text('Dark Mode'),
                ),
                PopupMenuItem<String>(
                  value: 'contact_us',
                  child: Text('Contact Us'),
                ),
                PopupMenuItem<String>(
                  value: 'logout',
                  child: Text('Log Out'),
                ),
              ];
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
