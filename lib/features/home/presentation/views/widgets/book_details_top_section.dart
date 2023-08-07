
import 'package:flutter/material.dart';
import 'package:reads/features/home/data/models/book_model/book_model.dart';

import '../../../../../core/utils/styles.dart';
import 'books_action.dart';
import 'books_rating.dart';
import 'custom_book_item.dart';

class BookDetailsTopSection extends StatelessWidget {
  const BookDetailsTopSection({Key? key, required this.book}) : super(key: key);

  final BookModel book;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .19),
          child: CustomBookImage(imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? '',),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          book.volumeInfo.title!,
          style: Styles.textStyle30,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(book.volumeInfo.authors?[0] ?? 'Author name not found',
            style: Styles.textStyle18.copyWith(fontStyle: FontStyle.italic)),
        const SizedBox(
          height: 18,
        ),
        BooksRating(
          mainAxisAlignment: MainAxisAlignment.center,
          count: book.volumeInfo.ratingsCount ?? 0,
          rating: book.volumeInfo.averageRating ?? 0,
        ),
        const SizedBox(
          height: 37,
        ),
         BooksAction(
          bookModel: book,
        ),
      ],
    );
  }
}