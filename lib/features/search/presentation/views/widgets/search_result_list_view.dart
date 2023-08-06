import 'package:flutter/material.dart';

import '../../../../home/presentation/views/widgets/newest_books_list_view_item.dart';

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
        return  Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          //child: BooksListViewItem(),
          child: Text('data'),
        );
      },
    );
  }
}