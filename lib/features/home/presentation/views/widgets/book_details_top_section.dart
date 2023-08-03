
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'books_action.dart';
import 'books_rating.dart';
import 'custom_book_item.dart';

class BookDetailsTopSection extends StatelessWidget {
  const BookDetailsTopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
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
            style: Styles.textStyle18.copyWith(fontStyle: FontStyle.italic)),
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
      ],
    );
  }
}