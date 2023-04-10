import 'package:flutter/material.dart';
import 'package:social_network_demo/screens/get_started_page/GetStartedPage.dart';
import 'package:social_network_demo/screens/home_page/HomePage.dart';
import 'package:social_network_demo/screens/profile_page//ProfilePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sosmad',
      initialRoute: '/',
      routes: {
        '/': (context) => GetStartedPage(),
        '/home' : (context) => HomePage(),
        '/profile' : (context) => ProfilePage(),
      },
    );
  }
}
