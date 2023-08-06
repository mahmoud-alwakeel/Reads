import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reads/core/widgets/custom_error_widget.dart';
import 'package:reads/core/widgets/custom_progress_indicator.dart';
import 'package:reads/features/home/data/models/book_model/book_model.dart';
import 'package:reads/features/home/presentation/view_models/newest_books_cubit/newest_books_cubit.dart';

import 'newest_books_list_view_item.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if(state is NewestBooksSuccessState) {
          return ListView.builder(
            //take height of it's children
            //shrinkWrap: true,
            // to not make both scrollable we only made the whole app scrollable
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index){
              return  Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: NewestBooksListViewItem(
                  bookModel: state.books[index],
                ),
              );
            },
          );
        } else if(state is NewestBooksFailureState){
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomProgressIndicator();
        }
      },
    );
  }
}