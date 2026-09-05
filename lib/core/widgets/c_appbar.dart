import 'package:flutter/material.dart';
import 'package:qbe/core/theme/colors.dart';
import 'package:qbe/core/widgets/c_text.dart';
import 'package:qbe/core/widgets/spacing.dart';

class CAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leading;
  final String title;
  final String? subtitle;
  final bool showStatusDot;
  final Widget? trailing;
  final bool centerTitle;
  final double height;

  const CAppBar({
    super.key,
    this.leading,
    required this.title,
    this.subtitle,
    this.showStatusDot = false,
    this.centerTitle = true,
    this.trailing,
    this.height = 80.0,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: height,
        padding: const EdgeInsets.symmetric(
          horizontal: Spacing.lg,
          vertical: Spacing.sl,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Leading
            if (leading != null) ...[
              leading!,
              if (!centerTitle) Spacing.md.h,
            ] else ...[
              const SizedBox(width: 48, height: 48),
              if (!centerTitle) Spacing.md.h,
            ],

            // Título + subtítulo
            Expanded(
              child: Column(
                crossAxisAlignment: centerTitle
                    ? CrossAxisAlignment.center
                    : CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: centerTitle
                        ? MainAxisAlignment.center
                        : MainAxisAlignment.start,
                    children: [
                      if (showStatusDot) ...[
                        Container(
                          width: 8,
                          height: 8,
                          decoration: const BoxDecoration(
                            color: AppColors.estadoCorrecto,
                            shape: BoxShape.circle,
                          ),
                        ),
                        Spacing.sm.h,
                      ],
                      Flexible(
                        child: CText.title(
                          title,
                          textAlign: centerTitle
                              ? TextAlign.center
                              : TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                  if (subtitle != null) ...[
                    CText.caption(
                      subtitle!,
                      color: AppColors.textoSecundario,
                      textAlign: centerTitle
                          ? TextAlign.center
                          : TextAlign.left,
                    ),
                  ],
                ],
              ),
            ),

            // Trailing
            trailing ?? const SizedBox(width: 48, height: 48),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
