import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qbe/core/router/router.dart';
import 'package:qbe/core/theme/colors.dart';
import 'package:qbe/core/widgets/buttons/primary_button.dart';
import 'package:qbe/core/widgets/c_appbar.dart';
import 'package:qbe/core/widgets/c_box.dart';
import 'package:qbe/core/widgets/c_text.dart';
import 'package:qbe/core/widgets/spacing.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(
        leading: CBox(
          width: 48,
          height: 48,
          borderRadius: 14,
          child: const Icon(
            Icons.smart_toy_outlined,
            color: AppColors.acentoPrincipal,
            size: 22,
          ),
        ),
        title: 'Q-Be',
      ),
      body: const _Content(),
    );
  }
}

class _Content extends StatelessWidget {
  const _Content();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Spacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CBox(
            width: 72,
            height: 72,
            borderRadius: 24,
            child: const Icon(
              Icons.chat_bubble_outline,
              color: AppColors.acentoPrincipal,
              size: 30,
            ),
          ),
          Spacing.xl.v,
          CText.caption(
            'PRACTICE YOUR ENGLISH',
            color: AppColors.acentoPrincipal,
            fontWeight: FontWeight.w700,
            letterSpacing: 1.2,
            textAlign: TextAlign.center,
          ),
          Spacing.sm.v,
          CText.display(
            'Start a new conversation',
            textAlign: TextAlign.center,
            fontWeight: FontWeight.w700,
          ),
          Spacing.md.v,
          CText.caption(
            'Practice question sentences in present simple, receive feedback, and improve your English skills.',
            color: AppColors.textoSecundario,
            textAlign: TextAlign.center,
          ),
          Spacing.xxl.v,
          PrimaryButton(
            label: 'New conversation',
            onPressed: () => context.pushNamed(ConstRouter.chat),
          ),
        ],
      ),
    );
  }
}
