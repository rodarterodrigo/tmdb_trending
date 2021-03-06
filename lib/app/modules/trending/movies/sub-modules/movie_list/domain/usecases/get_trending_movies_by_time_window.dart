import 'package:dartz/dartz.dart';
import 'package:tmdb_trending/app/core/shared/domain/entities/movie_list.dart';
import 'package:tmdb_trending/app/core/shared/domain/failures/failures.dart';
import 'package:tmdb_trending/app/modules/trending/movies/sub-modules/movie_list/domain/entities/trending_movies_request_parameter.dart';
import 'package:tmdb_trending/app/modules/trending/movies/sub-modules/movie_list/domain/failures/time_window_empty_failure.dart';
import 'package:tmdb_trending/app/modules/trending/movies/sub-modules/movie_list/domain/repositories/get_trending_movies_repository.dart';

abstract class GetTrendingMoviesByTimeWindowAbstraction {
  Future<Either<Failures, MovieList>> call(
      TrendingMoviesRequestParameter parameter);
}

class GetTrendingMoviesByTimeWindow
    implements GetTrendingMoviesByTimeWindowAbstraction {
  final GetTrendingMoviesRepository repository;

  const GetTrendingMoviesByTimeWindow(this.repository);

  @override
  Future<Either<Failures, MovieList>> call(
          TrendingMoviesRequestParameter parameter) async =>
      parameter.timeWindow.isEmpty
          ? const Left(TimeWindowEmptyFailure(
              'Selecione a janela de tempo para exibir a listagem'))
          : await repository(parameter);
}
