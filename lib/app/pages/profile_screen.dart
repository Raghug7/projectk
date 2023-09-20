import 'package:flutter/material.dart';
import 'package:project_k/app/pages/complete_profile.dart';
import 'package:project_k/app/pages/profile.dart';

class DetailedProfileScreen extends StatelessWidget {
  final ProfileWidget profile;

  DetailedProfileScreen({required this.profile, required String name, required String jobTitle, required String address, required String experience});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detailed Profile'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
              // Implement sharing functionality
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('assets/images/user.png'),
              ),
            ),
            SizedBox(height: 16),
            Text(
              profile.name,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(profile.jobTitle),
            Text(profile.experience),
            SizedBox(height: 8),
            Divider(),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    // Action for the first button
                  },
                  child: Text('Top Offers'),
                ),
                TextButton(
                  onPressed: () {
                    // Action for the second button
                  },
                  child: Text('Status'),
                ),
                TextButton(
                  onPressed: () {
                    // Action for the third button
                  },
                  child: Text('Bookmarks'),
                ),
                
              ],

            ),
            SizedBox(height: 2),
                Center(
              child: ElevatedButton(
                onPressed: () {
                  // Action for the complete profile button
                },
                child: Text('COMMING SOON'),
              ),
            ),
            Divider(),
            SizedBox(height: 8),
            Text('About', style: TextStyle(fontWeight: FontWeight.bold),),
            Text('In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available '), 
            SizedBox(height: 8),
            Text('Skills', style: TextStyle(fontWeight: FontWeight.bold),),
            Text(' UI/UX Design',), Text('Front End Devloper'), 
            SizedBox(height: 10),
            
            Text('Please Complete your profile to see more details about this canditate', style: TextStyle(color: Colors.blue),),
            SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CompleteProfileScreen()),
    );
                },
                child: Text('Complete Profile'),
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
