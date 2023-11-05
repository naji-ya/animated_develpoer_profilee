import 'package:animated_developer_profile/introPage.dart';
import 'package:flutter/material.dart';

import 'homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPage(
          onTap: () => Navigator.pop(context),
        ),
        routes: {
          '/homepage': (context) => const HomePage(),
        });
  }
}
