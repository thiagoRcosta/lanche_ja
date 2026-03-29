import 'package:flutter/material.dart';
import 'package:lanche_ja/app/core/theme/app_theme.dart';
import 'package:lanche_ja/app/shared/widgets/app_button.dart';
import 'package:lanche_ja/app/shared/widgets/app_text_button.dart';
import 'package:lanche_ja/app/shared/widgets/loading_widget.dart';

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lanche Já',
      theme: AppTheme.darkTheme,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Testes de Widgets',
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              AppButton(
                onPressed: () {},
                text: 'Botão',
              ),
              AppTextButton(
                onPressed: () {},
                text: 'Botão texto',
              ),
              SizedBox(height: 20),
              LoadingWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
