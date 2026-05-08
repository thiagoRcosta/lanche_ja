import 'package:flutter/material.dart';

class DrinkScreen extends StatelessWidget {
  const DrinkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Drink Screen'),
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Voltar'),
          ),
        ],
      ),
    );
  }
}
