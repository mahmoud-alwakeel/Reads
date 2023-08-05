import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reads/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';

part 'featured_books_states.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitialState());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoadingState());
    var result = await homeRepo.fetchFeaturedBooks();

    result.fold((failure) {
      emit(FeaturedBooksFailureState(failure.errorMessage));
    }, (books) {
      emit(FeaturedBooksSuccessState(books));
    });
  }
}
