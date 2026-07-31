import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lanche_ja/app/features/product/widgets/product_card_list.dart';
import 'package:lanche_ja/app/shared/widgets/app_loading.dart';
import 'package:lanche_ja/app/shared/widgets/app_text_button.dart';
import 'package:lanche_ja/app/shared/widgets/button.dart';
import 'package:lanche_ja/app/shared/widgets/menu/app_menu.dart';
import 'package:lanche_ja/app/shared/widgets/error.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                Button(
                  onPressed: () {
                    context.push('/login');
                  },
                  icon: Icons.person,
                  text: 'Login',
                ),

                const SizedBox(height: 20),

                const ProductCardList(
                  image: 'assets/images/x_salada.png',
                  title: 'X-Salada',
                  description: 'Acompanha Fritas e molho da casa',
                  price: 18.99,
                ),

                const SizedBox(height: 20),

                const ProductCardList(
                  image: 'assets/images/cheddar.png',
                  title: 'Duplo Cheddar',
                  description: 'Acompanha Fritas e molho da casa',
                  price: 20.99,
                  backgroundSwitch: true,
                ),

                const SizedBox(height: 20),

                const Error(
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
            bottom: 16,
            child: AppMenu(),
          ),
        ],
      ),
    );
  }
}
