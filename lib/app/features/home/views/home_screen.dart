import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Home Screen'),
            ElevatedButton(onPressed: () => Navigator.pop(context), child: Text('Voltar'))
          ],
        ),
    );
  }
}