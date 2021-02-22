import 'package:flutter/material.dart';
import 'send_Page.dart';

class WelcomeScreen extends StatelessWidget {
  static String id = 'WelcomeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(50.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text('New Way',style: TextStyle(
                  fontSize: 70,
                  fontWeight: FontWeight.w400,
                 ),
                ),
                Row(crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  Text('to',style: TextStyle(
                    fontSize: 70,
                    fontWeight: FontWeight.w400,
                  ),
                  ),
                  SizedBox(width:10 ,),
                  Text('Udhar',style: TextStyle(
                    fontSize: 80,
                    fontWeight: FontWeight.w700,
                  ),
                  ),
                 ],
                ),
                FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Send(),
                      ),
                    );
                  },
                  backgroundColor: Colors.black,
                  child: Text(
                    'Go',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
