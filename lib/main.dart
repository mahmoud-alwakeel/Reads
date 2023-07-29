import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/presentation/views/splash_screen.dart';

void main() {
  runApp(const Reads());
}

class Reads extends StatelessWidget {
  const Reads({super.key});

  @override
  Widget build(BuildContext context) {
    // GetX material app not the original one
    return const GetMaterialApp(
      home: SplashScreen(),
    );
  }
}
