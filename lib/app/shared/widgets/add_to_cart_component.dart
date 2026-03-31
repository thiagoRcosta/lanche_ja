import 'package:flutter/material.dart';
import 'package:lanche_ja/app/core/theme/app_colors.dart';

class AddToCartComponent extends StatefulWidget {
  const AddToCartComponent({super.key});

  @override
  State<AddToCartComponent> createState() => _AddToCartComponentState();
}

class _AddToCartComponentState extends State<AddToCartComponent> {
  //TODO: Implementar lógica de adicionar e remover itens do carrinho
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.add,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
          SizedBox(height: 10.0),
          Text(
            '10',
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          SizedBox(height: 10.0),
          Icon(
            Icons.remove,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ],
      ),
    );
  }
}
