import 'package:flutter/material.dart';
import 'screens/first_screen.dart';
import 'screens/second_screen.dart';
import 'screens/third_screen.dart';
import 'screens/route_generator_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => RouteGeneratorScreen(),
        '/second': (context) => SecondScreen(),
        '/third': (context) => ThirdScreen(),
      },
      // Handle dynamic routes
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) {
            // You can parse settings.name here to handle dynamic routes
            // For now, we'll just show a generic screen with the route info
            return Scaffold(
              appBar: AppBar(title: Text('Dynamic Route')),
              body: Center(
                child: Text('Route: ${settings.name}'),
              ),
            );
          },
        );
      },
    );
  }
}
