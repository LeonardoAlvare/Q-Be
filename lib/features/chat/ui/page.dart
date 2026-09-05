import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qbe/core/theme/colors.dart';
import 'package:qbe/core/widgets/c_appbar.dart';
import 'package:qbe/core/widgets/c_box.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(
        centerTitle: true,
        leading: CBox(
          width: 48,
          height: 48,
          borderRadius: 14,
          child: InkWell(
            onTap: () => context.pop(),
            child: Icon(
              Icons.arrow_back,
              color: AppColors.acentoPrincipal,
              size: 22,
            ),
          ),
        ),
        title: 'Q-Be Chat',
        subtitle: 'Your English practice buddy',
        showStatusDot: true,
        trailing: CBox(
          width: 48,
          height: 48,
          borderRadius: 14,
          child: const Icon(
            Icons.replay,
            color: AppColors.acentoPrincipal,
            size: 20,
          ),
        ),
      ),
      body: _Content(),
    );
  }
}

class _Content extends StatelessWidget {
  const _Content();

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Welcome to the Chat Page!'));
  }
}
