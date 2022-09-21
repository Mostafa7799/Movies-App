import 'package:equatable/equatable.dart';
import 'package:movies_app/core/utils/enum.dart';
import 'package:movies_app/movies/domain/entities/movie.dart';

class MoviesStates extends Equatable {
  final List<Movies> getNowPlayingMovies;
  final RequestState getNowPlayingState;
  final String nowPlayingMessage;

  final List<Movies> popularMovies;
  final RequestState popularState;
  final String popularMessage;

  final List<Movies> topRatedMovies;
  final RequestState topRatedState;
  final String topRatedMessage;

  const MoviesStates({
    this.getNowPlayingMovies = const [],
    this.getNowPlayingState = RequestState.isLoading,
    this.nowPlayingMessage = '',
    this.popularMovies = const [],
    this.popularState = RequestState.isLoading,
    this.popularMessage = '',
    this.topRatedMovies = const [],
    this.topRatedState = RequestState.isLoading,
    this.topRatedMessage = '',
  });

  MoviesStates copyWith({
    List<Movies>? getNowPlayingMovies,
    RequestState? getNowPlayingState,
    String? nowPlayingMessage,
    List<Movies>? popularMovies,
    RequestState? popularState,
    String? popularMessage,
    List<Movies>? topRatedMovies,
    RequestState? topRatedState,
    String? topRatedMessage,
  }) {
    return MoviesStates(
      getNowPlayingMovies: getNowPlayingMovies ?? this.getNowPlayingMovies,
      getNowPlayingState: getNowPlayingState ?? this.getNowPlayingState,
      nowPlayingMessage: nowPlayingMessage ?? this.nowPlayingMessage,
      popularMovies: popularMovies ?? this.popularMovies,
      popularState: popularState ?? this.popularState,
      popularMessage: popularMessage ?? this.popularMessage,

      topRatedMovies: topRatedMovies ?? this.topRatedMovies,
      topRatedState: topRatedState ?? this.topRatedState,
      topRatedMessage: topRatedMessage ?? this.topRatedMessage,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
        getNowPlayingMovies,
        getNowPlayingState,
        nowPlayingMessage,
        popularMovies,
        popularState,
        popularMessage,
        topRatedMovies,
        topRatedState,
        topRatedMessage
      ];
}
