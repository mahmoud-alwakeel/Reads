import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
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
    // GetX material app not the original one
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
      // changed the text style for the app
      textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
      home: const SplashScreen(),
    );
  }
}
