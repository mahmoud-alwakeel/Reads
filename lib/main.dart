import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reads/core/utils/app_router.dart';
import 'package:reads/core/utils/service_locator.dart';
import 'package:reads/features/home/data/repos/home_repo_implementation.dart';
import 'package:reads/features/home/presentation/view_models/featured_books_cubit/featured_books_cubit.dart';
import 'package:reads/features/home/presentation/view_models/newest_books_cubit/newest_books_cubit.dart';
import 'constants.dart';

void main() {
  setupSingelton();
  runApp(const Reads());
}

class Reads extends StatelessWidget {
  const Reads({super.key});

  @override
  Widget build(BuildContext context) {
    // Set status bar text color to white for this widget subtree
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    // initial rout inn is the AppRouter class which is splash screen
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImplementation>(),
          ),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            getIt.get<HomeRepoImplementation>(),
          ),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          // changed the text style for the app
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
