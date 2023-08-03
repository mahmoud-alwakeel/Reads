
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'inside_books_details_list_view.dart';

class BookDetailsBottomSection extends StatelessWidget {
  const BookDetailsBottomSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w700),
        ),
        const SizedBox(
          height: 16,
        ),
        const InsideBooksDetailsListView(),
        const SizedBox(
          height: 40,
        ),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }
}