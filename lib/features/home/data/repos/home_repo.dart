
import 'dart:async';

import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../models/book_model/book_model.dart';

abstract class HomeRepo {
  // we can decide 2 types, the left side is when other is an error and the
  // right side is when it's success
  Future<Either< Failure,List<BookModel>>> fetchBestSellerBooks();
  Future<Either< Failure,List<BookModel>>> fetchFeaturedBooks();
}