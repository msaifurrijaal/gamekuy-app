import 'package:bloc/bloc.dart';
import 'package:gamekuy_app/models/game.dart';
import 'package:http/http.dart' as http;

part 'game_event.dart';
part 'game_state.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  GameBloc() : super(GameInitial()) {
    on<GetAllGameEvent>((event, emit) async {
      try {
        emit(GameLoading());
        final response =
            await http.get(Uri.parse('https://www.freetogame.com/api/games'));

        if (response.statusCode == 200) {
          emit(GameSuccess(games: gameFromJson(response.body)));
        } else if (response.statusCode == 404) {
          emit(GameError(errorMessage: 'Game or endpoint not found'));
        } else if (response.statusCode == 500) {
          emit(GameError(
              errorMessage:
                  'Something wrong on our end (unexpected server errors)'));
        } else {
          emit(GameError(
              errorMessage:
                  'Failed to load games. Status Code: ${response.statusCode}'));
        }
      } catch (e) {
        emit(GameError(errorMessage: 'An error occurred: $e'));
      }
    });
  }
}
