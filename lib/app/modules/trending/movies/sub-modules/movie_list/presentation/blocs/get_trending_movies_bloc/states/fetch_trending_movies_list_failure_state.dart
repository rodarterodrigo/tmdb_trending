import 'package:tmdb_trending/app/modules/trending/movies/sub-modules/movie_list/domain/failures/trending_movies_list_failure.dart';
import 'package:tmdb_trending/app/modules/trending/movies/sub-modules/movie_list/presentation/blocs/get_trending_movies_bloc/states/trending_movies_list_states.dart';

class FetchTrendingMoviesListFailureState extends TrendingMoviesListStates {
  final TrendingMoviesListFailure failure;

  const FetchTrendingMoviesListFailureState(this.failure);
}
