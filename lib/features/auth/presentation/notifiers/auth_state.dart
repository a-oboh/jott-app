import 'package:equatable/equatable.dart';
import 'package:jott_app/core/models/user_model.dart';

abstract class AuthState extends Equatable {
  AuthState();
}

class AuthInitial extends AuthState {
  AuthInitial();

  @override
  List<Object> get props => [];
}

class AuthLoading extends AuthState {
  AuthLoading();

  @override
  List<Object> get props => [];
}

class AuthLoaded extends AuthState {
  final List<User> user;
  AuthLoaded(this.user);

  @override
  List<Object> get props => [user];
}

class AuthError extends AuthState {
  final String message;
  AuthError(this.message);

  @override
  List<Object> get props => [message];
}
