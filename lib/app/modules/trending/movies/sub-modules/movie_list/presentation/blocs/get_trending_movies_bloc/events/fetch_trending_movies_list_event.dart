import 'package:tmdb_trending/app/modules/trending/movies/sub-modules/movie_list/domain/entities/trending_movies_request_parameter.dart';
import 'package:tmdb_trending/app/modules/trending/movies/sub-modules/movie_list/presentation/blocs/get_trending_movies_bloc/events/trending_movies_list_events.dart';

class FetchTrendingMoviesListEvent extends TrendingMoviesListEvents {
  final TrendingMoviesRequestParameter parameter;

  const FetchTrendingMoviesListEvent(this.parameter);
}
