import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qbe/features/chat/ui/page.dart';
import 'package:qbe/features/home/ui/page.dart';

class ConstRouter {
  static const String home = 'home';
  static const String chat = 'chat';

  static const String homePath = '/';
  static const String chatPath = '/$chat';
}

class AppRouter {
  static GoRouter router = GoRouter(
    initialLocation: ConstRouter.homePath,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        name: ConstRouter.home,
        path: ConstRouter.homePath,
        pageBuilder: (context, state) =>
            _buildPageWithTransition(context, state, const HomePage()),
      ),
      GoRoute(
        name: ConstRouter.chat,
        path: ConstRouter.chatPath,
        pageBuilder: (context, state) =>
            _buildPageWithTransition(context, state, const ChatPage()),
      ),
    ],
  );

  static Page<void> _buildPageWithTransition(
    BuildContext context,
    GoRouterState state,
    Widget child,
  ) {
    return CustomTransitionPage<void>(
      key: state.pageKey,
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.easeInOutCubic;

        var tween = Tween(
          begin: begin,
          end: end,
        ).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: FadeTransition(opacity: animation, child: child),
        );
      },
      transitionDuration: const Duration(milliseconds: 400),
      reverseTransitionDuration: const Duration(milliseconds: 300),
    );
  }
}
