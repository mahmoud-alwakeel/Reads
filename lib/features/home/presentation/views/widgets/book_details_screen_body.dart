import 'package:flutter/material.dart';
import 'package:reads/core/utils/styles.dart';
import 'package:reads/features/home/presentation/views/widgets/books_rating.dart';
import 'package:reads/features/home/presentation/views/widgets/custom_book_item.dart';

import 'books_action.dart';
import 'custom_book_details_app_bar.dart';
import 'inside_books_details_list_view.dart';

class BookDetailsScreenBody extends StatelessWidget {
  const BookDetailsScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
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
              children: [
                const CustomBookDetailsAppBsr(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * .19),
                  child: const CustomBookImage(),
                ),
                const SizedBox(
                  height: 43,
                ),
                const Text(
                  'The Jungle Book',
                  style: Styles.textStyle30,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text('Rudyard Kipling',
                    style: Styles.textStyle18
                        .copyWith(fontStyle: FontStyle.italic)),
                const SizedBox(
                  height: 18,
                ),
                const BooksRating(
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                const SizedBox(
                  height: 37,
                ),
                const BooksAction(),
                const Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You can also like',
                    style: Styles.textStyle14
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const InsideBooksDetailsListView(),
                const SizedBox(
                  height: 40,
                ),
                // const SizedBox(
                //   height: 40,
                // )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
