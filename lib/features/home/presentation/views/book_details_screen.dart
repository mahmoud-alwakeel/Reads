import 'package:flutter/material.dart';
import 'package:reads/features/home/presentation/views/widgets/book_details_screen_body.dart';

class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: BookDetailsScreenBody(),
      ),
    );
  }
}
