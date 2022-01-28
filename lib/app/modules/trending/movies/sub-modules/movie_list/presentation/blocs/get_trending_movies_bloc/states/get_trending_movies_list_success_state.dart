import 'package:tmdb_trending/app/core/shared/domain/entities/movie_list.dart';
import 'package:tmdb_trending/app/modules/trending/movies/sub-modules/movie_list/presentation/blocs/get_trending_movies_bloc/states/trending_movies_list_states.dart';

class GetTrendingMoviesListSuccessState extends TrendingMoviesListStates {
  final MovieList movieListPage;

  const GetTrendingMoviesListSuccessState(this.movieListPage);
}
