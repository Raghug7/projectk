import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
            text: TextSpan(
             text: 'Someone from ',
              style: DefaultTextStyle.of(context).style,
              children: <TextSpan>[
              TextSpan(
                text: 'Google',
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                ),
               TextSpan(
               text: ' has viewed your Profile',
                    ),
                  ],
                ),
              ),

            Text(
              "2days ago",
              style: TextStyle(fontSize: 6,color: const Color.fromARGB(71, 0, 0, 0)),
            ),
            Divider(),
            RichText(
            text: TextSpan(
             text: 'Someone from ',
              style: DefaultTextStyle.of(context).style,
              children: <TextSpan>[
              TextSpan(
                text: 'Asia Pacific Bank',
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                ),
               TextSpan(
               text: ' has viewed your Profile',
                    ),
                  ],
                ),
              ),
            Text(
              "1week ago",
              style: TextStyle(fontSize: 6,color: const Color.fromARGB(71, 0, 0, 0)),
            ),
          ],
        ),
      ),
    );
  }
}