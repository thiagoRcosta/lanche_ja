import 'package:flutter/material.dart';

class BurgerScreen extends StatelessWidget {
  const BurgerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Burger Screen'),
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Voltar'),
          ),
        ],
      ),
    );
  }
}
