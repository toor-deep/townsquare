
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  final args = settings.arguments as Map<String, dynamic>?;

  switch (settings.name) {
    case '/':
      return MaterialPageRoute(
        builder: (context) => const MyApp(),
      );


    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: Center(
            child: Text('Page not found'),
          ),
        ),
      );
  }
}
