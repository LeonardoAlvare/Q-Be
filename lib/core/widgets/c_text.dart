import 'package:flutter/material.dart';

enum CTextVariant {
  displayMedium,
  titleLarge,
  titleMedium,
  bodyLarge,
  bodyMedium,
  bodySmall,
  labelLarge,
}

class CText extends StatelessWidget {
  final String text;
  final CTextVariant variant;
  final Color? color;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextDecoration? decoration;
  final FontWeight? fontWeight;
  final double? letterSpacing;

  const CText(
    this.text, {
    super.key,
    this.variant = CTextVariant.bodyLarge,
    this.color,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.decoration,
    this.fontWeight,
    this.letterSpacing,
  });

  const CText.display(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.decoration,
    this.fontWeight,
    this.letterSpacing,
  }) : variant = CTextVariant.displayMedium;

  const CText.title(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.decoration,
    this.fontWeight,
    this.letterSpacing,
  }) : variant = CTextVariant.titleLarge;

  const CText.body(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.decoration,
    this.fontWeight,
    this.letterSpacing,
  }) : variant = CTextVariant.bodyLarge;

  const CText.caption(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.decoration,
    this.fontWeight,
    this.letterSpacing,
  }) : variant = CTextVariant.bodySmall;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    TextStyle? baseStyle;
    switch (variant) {
      case CTextVariant.displayMedium:
        baseStyle = textTheme.displayMedium;
        break;
      case CTextVariant.titleLarge:
        baseStyle = textTheme.titleLarge;
        break;
      case CTextVariant.titleMedium:
        baseStyle = textTheme.titleMedium;
        break;
      case CTextVariant.bodyLarge:
        baseStyle = textTheme.bodyLarge;
        break;
      case CTextVariant.bodyMedium:
        baseStyle = textTheme.bodyMedium;
        break;
      case CTextVariant.bodySmall:
        baseStyle = textTheme.bodySmall;
        break;
      case CTextVariant.labelLarge:
        baseStyle = textTheme.labelLarge;
        break;
    }

    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style: baseStyle?.copyWith(
        color: color,
        decoration: decoration,
        fontWeight: fontWeight,
        letterSpacing: letterSpacing,
      ),
    );
  }
}
