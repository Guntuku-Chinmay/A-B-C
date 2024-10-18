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
        title: Text(
          'Welcome',
          style: TextStyle(color: Colors.white),
        ),
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
      body: Column(
        children: [
          // Upper row: Functional Calendar
          Container(
            height: 200, // Adjust height as needed
            child: Table(
              border: TableBorder.all(),
              //   children: [
              //     TableRow(
              //       children: [
              //         for (var day in [
              //           'Sun',
              //           'Mon',
              //           'Tue',
              //           'Wed',
              //           'Thu',
              //           'Fri',
              //           'Sat'
              //         ])
              //           Padding(
              //             padding: const EdgeInsets.all(8.0),
              //             child: Center(
              //                 child: Text(day,
              //                     style: TextStyle(fontWeight: FontWeight.bold))),
              //           ),
              //       ],
              //     ),
              //     // Add more rows for calendar days
              //     TableRow(
              //       children: [
              //         for (var i = 1; i <= 7; i++) // Example: 1-7 for a week
              //           Padding(
              //             padding: const EdgeInsets.all(8.0),
              //             child: Center(child: Text('$i')),
              //           ),
              //       ],
              //     ),
              // ],
            ),
          ),
          // Lower row: Various Posts
          Expanded(
            child: ListView.builder(
              itemCount: 100, // Example: number of posts
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text('Post Title ${index + 1}'),
                    subtitle:
                        Text('This is the description of post ${index + 1}.'),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Color(0xFF007BFF),
        unselectedItemColor: Colors.grey,
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
