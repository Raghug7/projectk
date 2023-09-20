import 'package:flutter/material.dart';
import 'package:project_k/app/pages/profile_screen.dart';

class ProfileWidget extends StatelessWidget {
  final String name;
  final String jobTitle;
  final String experience;
  final String address;    

  ProfileWidget({
    required this.name,
    required this.jobTitle,
    required this.experience,
    required this.address,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailedProfileScreen(profile: this, address: '', experience: '', jobTitle: '', name: '',)),
        );
      },
      child: Card(
        margin: EdgeInsets.all(16),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/fb.png'),
                ),
              ),
              SizedBox(height: 16),
              Text('Name: $name'),
              Text('Job Title: $jobTitle'),
              Text('Experience: $experience'),
              Text('Address: $address'),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {
                      // Action for the first text button
                    },
                    child: Text('UI/UX Design'),
                  ),
                  TextButton(
                    onPressed: () {
                      // Action for the second text button
                    },
                    child: Text('Front End Devloper'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
