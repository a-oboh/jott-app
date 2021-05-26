import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final List properties;
  final String? message;

  @override
  String toString() => message!;

  // If the subclasses have some properties, they'll get passed to this constructor
  // so that Equatable can perform value comparison.
  Failure({this.properties = const <dynamic>[], this.message}) : super();

  @override
  List<Object> get props => [properties];
}

// General failures
class ServerFailure extends Failure {
  final String? message;

  ServerFailure({this.message}): super(message: message);
}

class CacheFailure extends Failure {}
