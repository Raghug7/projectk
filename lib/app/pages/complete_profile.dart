import 'package:flutter/material.dart';

class CompleteProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Complete Profile'),
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        //color: Colors.lightBlue,
        padding: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 58,
                    backgroundImage: AssetImage('assets/images/user.png'),
                  ),
                ),
                Positioned(
                  child: IconButton(
                    icon: Icon(Icons.camera_alt),
                    onPressed: () {
                      // Action when camera icon is pressed
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Email',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 8),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter email',
                suffixIcon: Icon(Icons.email_outlined),
              ),
            ),
            SizedBox(height: 16),
            Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                onPressed: () {
                  // Action for the verify button
                },
                child: Text('Verify'),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Company Name',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 8),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter Company Name',
                suffixIcon: Icon(Icons.business_center_outlined),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Location',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 8),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter Your Location',
                suffixIcon: Icon(Icons.location_on_outlined),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Company Website',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 8),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter Your Official Website',
                suffixIcon: Icon(Icons.open_in_browser_outlined),
              ),
            ),
            SizedBox(height: 60),
            Center(
              child: ElevatedButton(
                onPressed: () {
             
                },
                child: Text('Save Profile'),
              ),
            ),
          ],
        ),
      ),
       bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            
          ),
        ],
        selectedItemColor: Colors.blue,
      ),
    );
  }
}
