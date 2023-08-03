import 'package:flutter/material.dart';
import 'package:reads/features/search/presentation/views/widgets/search_screen_body.dart';
class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SearchScreenBody(),
      ),
    );
  }
}


