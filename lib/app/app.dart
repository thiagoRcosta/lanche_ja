import 'package:flutter/material.dart';
import 'package:lanche_ja/app/features/product/viewmodels/product_view_model.dart';
import 'package:lanche_ja/app/shared/widgets/menu/app_menu.dart';
import 'package:provider/provider.dart';

import 'package:lanche_ja/app/core/theme/app_theme.dart';

import 'package:lanche_ja/app/shared/widgets/app_button.dart';
import 'package:lanche_ja/app/shared/widgets/app_error.dart';
import 'package:lanche_ja/app/shared/widgets/app_text_button.dart';
import 'package:lanche_ja/app/shared/widgets/app_loading.dart';

import 'package:lanche_ja/app/features/product/widgets/app_product_card_list.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ProductViewModel(),
        ),
      ],
      child: MaterialApp(
        title: 'Lanche Já',
        theme: AppTheme.darkTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.system,
        home: Scaffold(
          extendBody: true,
          appBar: AppBar(
            title: const Text('Teste de Widgets'),
          ),
          body: Stack(
            children: [
              SafeArea(
                child: ListView(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                    right: 16.0,
                    top: 16.0,
                    bottom: 64.0,
                  ),
                  children: [
                    AppButton(
                      onPressed: () {},
                      icon: Icons.shopping_cart,
                      text: 'Teste',
                    ),

                    const SizedBox(height: 20),

                    const AppProductCardList(
                      image: 'assets/images/x_salada.png',
                      title: 'X-Salada',
                      description: 'Acompanha Fritas e molho da casa',
                      price: 18.99,
                    ),

                    const SizedBox(height: 20),

                    const AppProductCardList(
                      image: 'assets/images/cheddar.png',
                      title: 'Duplo Cheddar',
                      description: 'Acompanha Fritas e molho da casa',
                      price: 20.99,
                      backgroundSwitch: true,
                    ),

                    const SizedBox(height: 20),

                    const AppErrorWidget(
                      message: 'Ops, algo deu errado!',
                    ),

                    const SizedBox(height: 20),

                    AppTextButton(
                      text: 'Botão de teste',
                      onPressed: () {},
                    ),

                    const SizedBox(height: 20),

                    const LoadingWidget(),
                  ],
                ),
              ),
              const Positioned(
                left: 0,
                right: 0,
                bottom: 20,
                child: AppMenu(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
