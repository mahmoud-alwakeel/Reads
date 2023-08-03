import 'package:go_router/go_router.dart';
import 'package:reads/features/home/presentation/views/book_details_screen.dart';
import 'package:reads/features/home/presentation/views/home_screen.dart';

import '../../features/splash/presentation/views/splash_screen.dart';

abstract class AppRouter {

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/homeScreen',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/bookDetailScreen',
        builder: (context, state) => const BookDetailsScreen(),
      ),
      GoRoute(
        path: '/searchScreen',
        builder: (context, state) => const SplashScreen(),
      ),
    ],
  );
}