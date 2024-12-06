import 'package:flutter/material.dart';
import '../widgets/bottom_nav_bar.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>?;

    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Form'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Contact Form'),
            Text('Navigated from: ${args?['from'] ?? 'Unknown'}'),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
