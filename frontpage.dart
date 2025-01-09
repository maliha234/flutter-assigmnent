import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile Screen',
      theme: ThemeData.light(),
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[100],
        elevation: 0,
        toolbarHeight: 0,
      ),
      body: Column(
        children: [
          // Header section
          Container(
            color: Colors.purple[100],
            padding: EdgeInsets.symmetric(vertical: 30),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/profile_picture.png'), // Replace with actual image asset
                ),
                SizedBox(height: 10),
                Text(
                  'Rita Smith',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  'Phone',
                  style: TextStyle(color: Colors.grey[600]),
                ),
                Text(
                  '+5999-771-7171',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 5),
                Text(
                  'Mail',
                  style: TextStyle(color: Colors.grey[600]),
                ),
                Text(
                  'rita@gmail.com',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          // Options section
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.dark_mode),
                  title: Text('Dark mode'),
                  trailing: Switch(
                    value: isDarkMode,
                    onChanged: (value) {
                      setState(() {
                        isDarkMode = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Profile details'),
                  onTap: () {
                    // Add navigation or action here
                    print('Profile details tapped');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                  onTap: () {
                    // Add navigation or action here
                    print('Settings tapped');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.logout),
                  title: Text('Log out'),
                  onTap: () {
                    // Add navigation or action here
                    print('Log out tapped');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
