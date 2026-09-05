import 'package:flutter/material.dart';
import 'package:qbe/core/theme/colors.dart';

class CBox extends StatelessWidget {
  final double width;
  final double height;
  final double borderRadius;
  final Widget child;

  const CBox({
    super.key,
    required this.width,
    required this.height,
    this.borderRadius = 32.0,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: AppColors.superficieNeumorfica,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: const [
          BoxShadow(
            color: AppColors.sombraOscura,
            offset: Offset(6, 6),
            blurRadius: 15,
            spreadRadius: 1,
          ),
          BoxShadow(
            color: AppColors.sombraClara,
            offset: Offset(-6, -6),
            blurRadius: 15,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Center(child: child),
    );
  }
}
