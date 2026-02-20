import 'package:eaqari/features/auth/screens/login_screen.dart';
import 'package:eaqari/features/home/presentation/screens/home_screen.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/LoginScreen',
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);