import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jott_app/features/auth/presentation/notifiers/auth_state.dart';

class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier(AuthState state) : super(AuthInitial());

  
}