import 'package:flutter/material.dart';
import 'package:lanche_ja/app/features/product/viewmodels/product_view_model.dart';
import 'package:provider/provider.dart';
import 'package:lanche_ja/app/core/theme/app_colors.dart';
import 'package:lanche_ja/app/core/theme/app_text_styles.dart';

class AddToCartComponent extends StatefulWidget {
  const AddToCartComponent({super.key});

  @override
  State<AddToCartComponent> createState() => _AddToCartComponentState();
}

class _AddToCartComponentState extends State<AddToCartComponent> {
  static const double _collapsedSize = 35;
  static const double _expandedHeight = 120;
  static const Duration _containerAnimation = Duration(milliseconds: 250);

  Future<void> _handleAdd(ProductViewModel vm) async {
    vm.addItem();
  }

  Future<void> _handleRemove(ProductViewModel vm) async {
    vm.removeItem();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ProductViewModel>(
      builder: (context, vm, child) {
        final showControls = vm.quantity > 0;
        return AnimatedContainer(
          duration: _containerAnimation,
          curve: Curves.easeInOut,
          height: vm.isExpanded ? _expandedHeight : _collapsedSize,
          width: _collapsedSize,
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              AnimatedButton(
                icon: Icons.add,
                onTap: () => _handleAdd(vm),
                color: vm.isMax ? AppColors.primaryDisabled : AppColors.black,
              ),

              ClipRect(
                child: AnimatedSize(
                  duration: _containerAnimation,
                  curve: Curves.easeInOut,
                  child: showControls
                      ? Column(
                          children: [
                            const SizedBox(height: 6),

                            Text(
                              vm.quantity.toString(),
                              style: AppTextStyles.titleSmall.copyWith(
                                color: AppColors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            const SizedBox(height: 5),

                            AnimatedButton(
                              icon: Icons.remove,
                              onTap: () => _handleRemove(vm),
                              color: AppColors.black,
                            ),
                          ],
                        )
                      : const SizedBox(),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class AnimatedButton extends StatefulWidget {
  final IconData icon;
  final VoidCallback onTap;
  final Color color;

  const AnimatedButton({
    super.key,
    required this.icon,
    required this.onTap,
    required this.color,
  });

  @override
  State<AnimatedButton> createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton> {
  static const Duration _animationDuration = Duration(milliseconds: 100);

  double scale = 1;

  Future<void> _animate() async {
    if (!mounted) return;

    setState(() => scale = 0.7);

    await Future.delayed(_animationDuration);

    if (!mounted) return;

    setState(() => scale = 1);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: () {
        _animate();
        widget.onTap();
      },
      child: AnimatedScale(
        scale: scale,
        duration: _animationDuration,
        child: Icon(
          widget.icon,
          color: widget.color,
          size: 26,
        ),
      ),
    );
  }
}
