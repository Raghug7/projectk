import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project_k/app/pages/looking_hire.dart';
import 'package:project_k/app/work/bottem_bar.dart';
import 'package:project_k/app/work/looking_work.dart';

class MyHomePage extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MainScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/user.png',
        // width: 100,
        // height: 100,
        ),
      ),
    );
  }
}


class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Welcome to Job Portal'),
      centerTitle: true,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('I am', style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
                  // If the button is pressed, return light blue, otherwise transparent
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.lightBlue.withOpacity(0.5);
                  }
                  return Colors.white;
                }),
                foregroundColor: MaterialStateProperty.resolveWith((states) {
                  // If the button is pressed, return black, otherwise black
                  return Colors.black;
                }),
                overlayColor: MaterialStateProperty.resolveWith((states) {
                  // Use an empty overlay color
                  return Colors.white;
                }),
                side: MaterialStateProperty.resolveWith((states) {
                  // Set the button border side
                  return BorderSide(color: Colors.black);
                }),
                padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(vertical: 22, horizontal: 50),
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              child: Text('Looking to Hire'),
              onPressed: () {
                Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LookingHire()), // Navigate to the second screen
    );
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ButtonStyle(
                
                backgroundColor: MaterialStateProperty.resolveWith((states) {
                  // If the button is pressed, return light blue, otherwise transparent
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.lightBlue.withOpacity(0.5);
                  }
                  return Colors.white;
                }),
                foregroundColor: MaterialStateProperty.resolveWith((states) {
                  // If the button is pressed, return black, otherwise black
                  return Colors.black;
                }),
                overlayColor: MaterialStateProperty.resolveWith((states) {
                  // Use an empty overlay color
                  return Colors.white;
                }),
                side: MaterialStateProperty.resolveWith((states) {
                  
                  return BorderSide(color: Colors.black);
                }),
                padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(vertical: 22, horizontal: 50),
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              child: Text('Looking to Work'),
              onPressed: () {
                Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>  BottomBar()), // Navigate to the second screen
    );
              },
            ),
            SizedBox(
              height: 250,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.lightBlue),
                foregroundColor: MaterialStateProperty.all(Colors.white),
                side: MaterialStateProperty.resolveWith((states) {
                  // Set the button border side
                  return BorderSide(color: Colors.black);
                }),
                padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              child: Text('Continue'),
              onPressed: () {
                // Action for Continue button
              },
            ),
          ],
        ),
        
      ),
    );
  }
}
