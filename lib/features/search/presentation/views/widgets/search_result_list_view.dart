import 'package:flutter/material.dart';

import '../../../../home/presentation/views/widgets/best_seller_list_view_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      //take height of it's children
      //shrinkWrap: true,
      // as a result we must make it expanded
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: BooksListViewItem(),
        );
      },
    );
  }
}