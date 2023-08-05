part of 'newest_books_cubit.dart';

abstract class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props {
    return [];
  }
}

class NewestBooksInitialState extends NewestBooksState {}

class NewestBooksLoadingState extends NewestBooksState {}

class NewestBooksFailureState extends NewestBooksState {
  final String errorMessage;

  const NewestBooksFailureState(this.errorMessage);
}

class NewestBooksSuccessState extends NewestBooksState {
  final List<BookModel> books;

  const NewestBooksSuccessState(this.books);
}
