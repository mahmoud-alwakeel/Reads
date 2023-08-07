import 'package:flutter/material.dart';
import 'package:reads/features/home/data/models/book_model/book_model.dart';

import 'book_details_bottom_section.dart';
import 'book_details_top_section.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsScreenBody extends StatelessWidget {
  const BookDetailsScreenBody({Key? key, required this.bookModel}) : super(key: key);

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        //inside sliverFillRemaining we can use expanded
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 0),
            // putting a singleChildScrollView throws an error here as it's default is to shrink
            // around it's children while we wrapped a sizedBox down with an expanded widget
            child: Column(
              children:  [
                const CustomBookDetailsAppBsr(),
                BookDetailsTopSection(
                  book: bookModel,
                ),
                const Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                const BookDetailsBottomSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}


