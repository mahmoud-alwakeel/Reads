import 'package:flutter/material.dart';
import 'package:reads/core/utils/styles.dart';
import 'package:reads/features/search/presentation/views/widgets/search_result_list_view.dart';

import 'custom_search_text_field.dart';

class SearchScreenBody extends StatelessWidget {
  const SearchScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomSearchTextField(),
          SizedBox(height: 20,),
          Text('Results',style: Styles.textStyle18,),
          SizedBox(height: 20,),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}





