import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';


class FinalProfileScreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Detailed Profile'),
        
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              Navigator.pop(context);
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
              "Full Name",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text("Job titel | Experience"),
            Text("Location,Country"),
            SizedBox(height: 8),
            Text('About', style: TextStyle(fontWeight: FontWeight.bold),),
            Text('In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available '), 
            SizedBox(height: 8),
            Text('Skills', style: TextStyle(fontWeight: FontWeight.bold),),
            Text(' UI/UX Design',), Text('Front End Devloper'), 
            SizedBox(height: 10),
            
            ListTile(
            leading: Icon(Icons.browser_updated_rounded), 
             title: Text(
            'www.myportfolio.com', 
            style: TextStyle(
            color: Colors.blue, 
            decoration: TextDecoration.underline, 
                 ),
              ),
            ),
            SizedBox(height: 8),
            
            ListTile(
            leading: Icon(Icons.email), 
             title: Text(
            'useremailaddress@gmail.com', 
            style: TextStyle(
            color: Colors.blue, 
            decoration: TextDecoration.underline, 
                 ),
              ),
            ),

            SizedBox(height: 15,),
            ListTile(
            leading: Icon(Icons.person_4), 
             title: Text(
            'www.instagram.com/profilename/', 
            style: TextStyle(
            color: Colors.blue, 
            decoration: TextDecoration.underline, 
                 ),
              ),
            ),
            SizedBox(height: 8),
            
            ListTile(
            leading: Icon(Icons.person_4), 
             title: Text(
            'www.twitter.com/profilename/', 
            style: TextStyle(
            color: Colors.blue, 
            decoration: TextDecoration.underline, 
                 ),
              ),
            ),
            SizedBox(height: 8),
            
            ListTile(
            leading: Icon(Icons.person_4), 
             title: Text(
            'www.linkedin.com/profilename/', 
            style: TextStyle(
            color: Colors.blue, 
            decoration: TextDecoration.underline, 
                 ),
              ),
            ),
          ],
        ),
      ),
      
    );
  }
}
