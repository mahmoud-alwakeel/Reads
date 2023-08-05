import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reads/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';

part 'newest_books_states.dart';
class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitialState());

  final HomeRepo homeRepo;

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoadingState());
    var result = await homeRepo.fetchNewestBooks();

    result.fold((failure) {
      emit(NewestBooksFailureState(failure.errorMessage));
    }, (books) {
      emit(NewestBooksSuccessState(books));
    });
  }
}