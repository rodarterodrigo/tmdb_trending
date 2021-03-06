import 'package:tmdb_trending/app/core/shared/domain/entities/movie_list.dart';
import 'package:tmdb_trending/app/core/shared/domain/entities/movie_list_results.dart';
import 'package:tmdb_trending/app/core/shared/infrastructure/models/movie_list_results_model.dart';

class MovieListModel extends MovieList {
  const MovieListModel({
    required MovieListResults results,
    required int page,
    required int totalPages,
    required int totalResults,
  }) : super(
          results: results,
          page: page,
          totalPages: totalPages,
          totalResults: totalResults,
        );

  factory MovieListModel.fromJson(Map<String, dynamic> json) => MovieListModel(
        results: MovieListResultsModel.fromJson(json['results']),
        page: json['page'],
        totalPages: json['total_pages'],
        totalResults: json['total_results'],
      );
}
