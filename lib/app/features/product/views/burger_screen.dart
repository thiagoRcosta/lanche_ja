import 'package:flutter/material.dart';

class BurguerScreen extends StatelessWidget {
  const BurguerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Burguer Screen'),
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Voltar'),
          ),
        ],
      ),
    );
  }
}
