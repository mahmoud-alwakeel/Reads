import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:reads/core/utils/service_locator.dart';
import 'package:reads/features/home/data/models/book_model/book_model.dart';
import 'package:reads/features/home/data/repos/home_repo_implementation.dart';
import 'package:reads/features/home/presentation/view_models/similar_books_cubit/similar_books_cubit.dart';
import 'package:reads/features/home/presentation/views/book_details_screen.dart';
import 'package:reads/features/home/presentation/views/home_screen.dart';
import 'package:reads/features/search/presentation/views/search_screen.dart';

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
        path: '/searchScreen',
        builder: (context, state) => const SearchScreen(),
      ),
      GoRoute(
        path: '/bookDetailScreen',
        builder: (context, state) => BlocProvider(
            create: (context) => SimilarBooksCubit(
                  getIt.get<HomeRepoImplementation>(),
                ),
            child: BookDetailsScreen(
              bookModel: state.extra as BookModel,
            )),
      ),
    ],
  );
}
