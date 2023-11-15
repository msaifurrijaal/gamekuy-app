import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<SingUpEvent>((event, emit) async {
      emit(SignUpLoading());

      try {
        var url = Uri.parse(
            "https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyDp4Xso8d2JSbJfJux1EXscJ756uzwN0Xw");

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
      print(state);
    });
  }
}
