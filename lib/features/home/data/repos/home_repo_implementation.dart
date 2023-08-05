import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:reads/core/errors/failure.dart';
import 'package:reads/core/utils/api_service.dart';
import 'package:reads/features/home/data/models/book_model/book_model.dart';
import 'package:reads/features/home/data/repos/home_repo.dart';


// interface???????
class HomeRepoImplementation implements HomeRepo {
  late final ApiService apiService;
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data  = await apiService.getRequest(endpoint: 'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science');

      List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));

      }
      return Right(books);
    } catch(e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data  = await apiService.getRequest(endpoint: 'volumes?Filtering=free-ebooks&q=computer science');

      List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));

      }
      return Right(books);
    } catch(e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }

}