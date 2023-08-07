import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:reads/core/widgets/custom_error_widget.dart';
import 'package:reads/core/widgets/custom_progress_indicator.dart';
import 'package:reads/features/home/presentation/view_models/featured_books_cubit/featured_books_cubit.dart';
import 'package:reads/features/home/presentation/views/widgets/custom_book_item.dart';

class CustomBooksListView extends StatelessWidget {
  const CustomBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
       builder: (context, state) {
         if( state is FeaturedBooksSuccessState) {
           return SizedBox(
             // to make height responsive to the device size
             height:  MediaQuery.of(context).size.height * .28,
             child: ListView.builder(
               physics: const BouncingScrollPhysics(),
               itemCount: state.books.length,
               scrollDirection: Axis.horizontal,
               itemBuilder: (context, index) {
                 return  Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 8.0),
                   child: GestureDetector(
                     onTap: (){
                       GoRouter.of(context).push('/bookDetailScreen', extra: state.books[index]);
                     },
                     child: CustomBookImage(
                       imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail?? '',
                     ),
                   ),
                 );
               },

             ),
           );
         } else if (state is FeaturedBooksFailureState) {
           return CustomErrorWidget(errorMessage: state.errorMessage);
         } else {
           return const CustomProgressIndicator();
         }
       }
    );
  }
}