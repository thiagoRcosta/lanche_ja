import 'package:flutter/material.dart';
import 'package:lanche_ja/app/features/product/viewmodels/product_view_model.dart';
import 'package:provider/provider.dart';
import 'package:lanche_ja/app/core/theme/app_colors.dart';
import 'package:lanche_ja/app/core/theme/app_text_styles.dart';

class AddToCartComponentVertical extends StatefulWidget {
  const AddToCartComponentVertical({super.key});

  @override
  State<AddToCartComponentVertical> createState() =>
      _AddToCartComponentVerticalState();
}

class _AddToCartComponentVerticalState
    extends State<AddToCartComponentVertical> {
  static const double _collapsedSize = 32;
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              ElevatedButton(
                onPressed: () => _handleAdd(vm),
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: EdgeInsets.all(3),
                  elevation: 0,
                  minimumSize: Size.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  backgroundColor: Colors.transparent,
                  shadowColor: AppColors.primaryDisabled.withAlpha(20),
                ),
                child: Icon(
                  Icons.add,
                  size: 26,
                  color: vm.isMax ? AppColors.primaryDisabled : AppColors.black,
                ),
              ),

              ClipRect(
                child: AnimatedSize(
                  duration: _containerAnimation,
                  curve: Curves.easeInOut,
                  child: showControls
                      ? SizedBox(
                          height: _expandedHeight - _collapsedSize,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: _collapsedSize / 2,
                                ),
                                child: Text(
                                  vm.quantity.toString(),
                                  textAlign: TextAlign.center,
                                  style: AppTextStyles.titleSmall.copyWith(
                                    color: AppColors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),

                              ElevatedButton(
                                onPressed: () => _handleRemove(vm),
                                style: ElevatedButton.styleFrom(
                                  shape: const CircleBorder(),
                                  padding: const EdgeInsets.all(3),
                                  elevation: 0,
                                  minimumSize: Size.zero,
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  backgroundColor: Colors.transparent,
                                  shadowColor: AppColors.primaryDisabled
                                      .withAlpha(20),
                                ),
                                child: Icon(
                                  Icons.remove,
                                  size: 26,
                                  color: AppColors.black,
                                ),
                              ),
                            ],
                          ),
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
