import 'package:flutter/material.dart';
import 'package:reads/core/utils/styles.dart';
import 'package:reads/features/home/presentation/views/widgets/books_rating.dart';
import 'package:reads/features/home/presentation/views/widgets/custom_book_item.dart';

import 'book_details_bottom_section.dart';
import 'book_details_top_section.dart';
import 'books_action.dart';
import 'custom_book_details_app_bar.dart';
import 'inside_books_details_list_view.dart';

class BookDetailsScreenBody extends StatelessWidget {
  const BookDetailsScreenBody({Key? key}) : super(key: key);

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
              children: const [
                CustomBookDetailsAppBsr(),
                BookDetailsTopSection(),
                Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                BookDetailsBottomSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}


