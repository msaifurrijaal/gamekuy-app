import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on(<LogoutEvent>(event, emit) async {
      emit(LogoutSuccess());
    });

    on<SingUpEvent>((event, emit) async {
      emit(SignUpLoading());

      try {
        var url = Uri.parse(
            "${dotenv.env['BASE_URL_AUTH']}v1/accounts:signUp?key=${dotenv.env['API_KEY']}");

        var response = await http.post(
          url,
          body: json.encode({
            "email": event.email,
            "password": event.password,
            "returnSecureToken": true,
          }),
        );

        var responseData = json.decode(response.body);

        if (responseData['error'] != null) {
          throw responseData['error']["message"];
        }

        String uid = responseData["localId"];

        emit(SignUpSuccess(uid: uid));
      } catch (error) {
        emit(SignUpError(errorMessage: error.toString()));
      }
    });

    on<SingInEvent>((event, emit) async {
      emit(SignInLoading());
      try {
        var url = Uri.parse(
            "${dotenv.env['BASE_URL_AUTH']}v1/accounts:signInWithPassword?key=${dotenv.env['API_KEY']}");

        var response = await http.post(
          url,
          body: json.encode({
            "email": event.email,
            "password": event.password,
            "returnSecureToken": true,
          }),
        );

        var responseData = json.decode(response.body);

        if (responseData['error'] != null) {
          throw responseData['error']["message"];
        }

        String uid = responseData["localId"];

        emit(SignInSuccess(uid: uid));
      } catch (error) {
        emit(SignInError(errorMessage: error.toString()));
      }
    });
  }
}
