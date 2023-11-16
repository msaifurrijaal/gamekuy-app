part of 'auth_bloc.dart';

abstract class AuthEvent {}

class SingUpEvent extends AuthEvent {
  final String email;
  final String password;

  SingUpEvent({required this.email, required this.password});
}

class SingInEvent extends AuthEvent {
  final String email;
  final String password;

  SingInEvent({required this.email, required this.password});
}

class LogoutEvent extends AuthEvent {}
