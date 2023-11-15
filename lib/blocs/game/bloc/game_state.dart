part of 'game_bloc.dart';

abstract class GameState {}

final class GameInitial extends GameState {}

class GameLoading extends GameState {}

class GameSuccess extends GameState {
  final List<Game> games;
  GameSuccess({required this.games});
}

class GameError extends GameState {
  final String errorMessage;
  GameError({required this.errorMessage});
}
