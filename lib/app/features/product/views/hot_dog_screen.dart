import 'package:flutter/material.dart';

class HotDogScreen extends StatelessWidget {
  const HotDogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Hot Dog Screen'),
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Voltar'),
          ),
        ],
      ),
    );
  }
}
