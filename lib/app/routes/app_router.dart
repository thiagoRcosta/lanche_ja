import 'package:go_router/go_router.dart';
import 'package:lanche_ja/app/features/auth/views/login_screen.dart';
import 'package:lanche_ja/app/features/home/views/home_screen.dart';
import 'package:lanche_ja/app/features/product/views/burger_screen.dart';
import 'package:lanche_ja/app/features/product/views/drink_screen.dart';
import 'package:lanche_ja/app/features/product/views/hot_dog_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',

  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),

    GoRoute(
      path: '/burger',
      builder: (context, state) => const BurgerScreen(),
    ),

    GoRoute(
      path: '/hot_dog',
      builder: (context, state) => const HotDogScreen(),
    ),

    GoRoute(
      path: '/drink',
      builder: (context, state) => const DrinkScreen(),
    ),

    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
  ],
);
