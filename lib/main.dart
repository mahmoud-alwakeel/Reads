import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reads/core/utils/app_router.dart';
import 'constants.dart';
import 'features/splash/presentation/views/splash_screen.dart';

void main() {
  runApp(const Reads());
}

class Reads extends StatelessWidget {
  const Reads({super.key});

  @override
  Widget build(BuildContext context) {
    // Set status bar text color to white for this widget subtree
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    // initial rout inn is the AppRouter class which is splash screen
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
      // changed the text style for the app
      textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
    );
  }
}

