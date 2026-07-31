import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Login Screen'),
          ElevatedButton(
            onPressed: () => context.pop(),
            child: Text('Voltar'),
          ),
        ],
      ),
    );
  }
}
