import 'package:flutter/material.dart';
import 'package:project_k/app/pages/profile.dart';

class LookingHire extends StatefulWidget {
  @override
  _LookingHireState createState() => _LookingHireState();
}

class _LookingHireState extends State<LookingHire> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profiles'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: '#Frontenddevelepment',
                prefixIcon: Icon(Icons.search),
              ),
              // Implement search functionality here
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Action for the first text button
                },
                child: Text('#Frontenddevelepment'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Action for the second text button
                },
                child: Text('#Bangalore'),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 3, // Number of profiles
              itemBuilder: (context, index) {
                return ProfileWidget(
                  name: 'John Doe',
                  jobTitle: 'Software Engineer',
                  experience: '5 years',
                  address: '123 Main St',
                );
              },
            ),
          ),
        ],
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

