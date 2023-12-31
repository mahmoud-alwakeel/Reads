import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reads/core/widgets/custom_error_widget.dart';
import 'package:reads/core/widgets/custom_progress_indicator.dart';
import 'package:reads/features/home/presentation/view_models/similar_books_cubit/similar_books_cubit.dart';
import 'package:reads/features/home/presentation/views/widgets/custom_book_item.dart';

class InsideBooksDetailsListView extends StatelessWidget {
  const InsideBooksDetailsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if(state is SimilarBooksSuccessState){
          return SizedBox(
            // to make height responsive to the device size
            height:  MediaQuery.of(context).size.height * .14,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: CustomBookImage(
                    imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail ?? '',),
                );
              },

            ),
          );
        } else if (state is SimilarBooksFailureState){
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomProgressIndicator();
        }
      },
    );
  }
}