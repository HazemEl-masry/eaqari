import 'package:eaqari/features/auth/screens/login_screen.dart';
import 'package:eaqari/features/auth/screens/register_screen.dart';
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
      path: '/RegisterScreen',
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(
      path: '/HomeScreen',
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);