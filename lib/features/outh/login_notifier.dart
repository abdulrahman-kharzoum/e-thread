import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'login_state.dart';

// Login form state provider
final loginFormProvider = StateNotifierProvider<LoginFormNotifier, LoginFormState>((ref) {
  return LoginFormNotifier();
});

class LoginFormNotifier extends StateNotifier<LoginFormState> {
  LoginFormNotifier() : super(LoginFormState());

  void updateUsername(String username) {
    state = state.copyWith(
      username: username,
      isValid: username.isNotEmpty && state.password.isNotEmpty,
    );
  }

  void updatePassword(String password) {
    state = state.copyWith(
      password: password,
      isValid: state.username.isNotEmpty && password.isNotEmpty,
    );
  }

  void togglePasswordVisibility() {
    state = state.copyWith(isPasswordVisible: !state.isPasswordVisible);
  }
}
