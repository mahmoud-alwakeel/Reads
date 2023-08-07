import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reads/features/home/data/models/book_model/book_model.dart';
import 'package:reads/features/home/presentation/view_models/similar_books_cubit/similar_books_cubit.dart';
import 'package:reads/features/home/presentation/views/widgets/book_details_screen_body.dart';

class BookDetailsScreen extends StatefulWidget {
  const BookDetailsScreen({Key? key, required this.bookModel})
      : super(key: key);

  final BookModel bookModel;

  @override
  State<BookDetailsScreen> createState() => _BookDetailsScreenState();
}

class _BookDetailsScreenState extends State<BookDetailsScreen> {

  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(
        category: widget.bookModel.volumeInfo.categories![0]
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: BookDetailsScreenBody(),
      ),
    );
  }
}
