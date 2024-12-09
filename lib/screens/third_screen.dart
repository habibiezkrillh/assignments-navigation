import 'package:flutter/material.dart';
import '../widgets/bottom_nav_bar.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Third Screen Content'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/dynamic');
              },
              child: Text('Go to Dynamic Routes'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
