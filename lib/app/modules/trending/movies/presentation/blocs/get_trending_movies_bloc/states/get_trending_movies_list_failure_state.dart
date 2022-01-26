import 'package:imdb_trending/app/modules/trending/movies/domain/failures/trending_movies_list_failure.dart';
import 'package:imdb_trending/app/modules/trending/movies/presentation/blocs/get_trending_movies_bloc/states/trending_movies_list_states.dart';

class GetTrendingMoviesListFailureState extends TrendingMoviesListStates{
  final TrendingMoviesListFailure failure;

  GetTrendingMoviesListFailureState(this.failure);
}