import 'package:flutter/material.dart';
import 'package:project_k/app/home/home_view.dart';
import 'package:project_k/app/work/full_profile.dart';

class LookingWork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Looking for Work'),
      //   leading: IconButton(
      //     icon: Icon(Icons.arrow_back),
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //   ),
      // ),
      body: Container(
        padding: EdgeInsets.all(20),
        //padding: EdgeInsets.only(top: 5, left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Existing profile picture code here
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
            SizedBox(height: 8),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Full Name',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Rahul Sharma', // Static text for the full name
                style: TextStyle(fontSize: 12, color: Color.fromARGB(96, 0, 0, 0)),
              ),
            ),
            SizedBox(height: 5),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Job Title',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'e.g. Sales Manager,Artist,Surgeon,etc...', // Static text for the full name
                style: TextStyle(fontSize: 12, color: Color.fromARGB(96, 0, 0, 0)),
              ),
            ),
            SizedBox(height: 3),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Experience',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'e.g. 8 years in Food industry', // Static text for the full name
                style: TextStyle(fontSize: 12, color: Color.fromARGB(96, 0, 0, 0)),
              ),
            ),
            SizedBox(height: 3),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Location',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'City of Country', // Static text for the full name
                style: TextStyle(fontSize: 12, color: Color.fromARGB(96, 0, 0, 0)),
              ),
            ),
            SizedBox(height: 3,),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'About',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                  )
                ],
              ),
               Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'In publishing and graphic design, the visual form of a document or a typeface without  placeholder before final copy is available.',
                  style: TextStyle(color: Color.fromARGB(96, 0, 0, 0)),
                ),
              ),
              SizedBox(height: 3,),
               Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Skills',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Enter skills (up to 5)',
                  style: TextStyle(color: Color.fromARGB(96, 0, 0, 0)),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('#UI/UX Design', style: TextStyle(color: Colors.lightBlue),),
                  Text('# Front End Developer', style: TextStyle(color: Colors.lightBlue),)
                ],
              ),
              SizedBox(height: 3,),
             Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Website',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'www.myportfolio.com',
                  style: TextStyle(color: Color.fromARGB(96, 0, 0, 0)),
                ),
              ),
              SizedBox(height: 3,),
               Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Your Email',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                  'Enter your Email',
                  style: TextStyle(color: Color.fromARGB(96, 0, 0, 0)),
                ),
                    ElevatedButton(
                    onPressed: () {
                      // Action for the second text button
                    },
                    child: Text('Verify'),
                  ),
                ],
              ),
              SizedBox(height: 3,),
               Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Social Media',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter link of your social media profile',
                  prefixIcon: Icon(Icons.open_in_browser_outlined),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  '+Add more',
                  style: TextStyle(color: Colors.lightBlue),
                ),
              ),
            
            SizedBox(height: 8,),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => FinalProfileScreen()),
    );
                },
                child: Text('Save Profile'),
              ),
            ),
          ],
        ),
      ),
      
    );
  }
}
