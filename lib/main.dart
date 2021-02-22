import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:screens/screens/receive_Page.dart';
import 'screens/details.dart';
import 'screens/send_Page.dart';
import 'screens/welcome_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute:WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        Send.id : (context) => Send(),
        Receive.id: (context) => Receive(),
        Details.id : (context) => Details(),
      },
    );
  }
}

