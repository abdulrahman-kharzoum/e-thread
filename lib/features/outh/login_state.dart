class LoginFormState {
  final String username;
  final String password;
  final bool isPasswordVisible;
  final bool isValid;

  LoginFormState({
    this.username = '',
    this.password = '',
    this.isPasswordVisible = false,
    this.isValid = false,
  });

  LoginFormState copyWith({
    String? username,
    String? password,
    bool? isPasswordVisible,
    bool? isValid,
  }) {
    return LoginFormState(
      username: username ?? this.username,
      password: password ?? this.password,
      isPasswordVisible: isPasswordVisible ?? this.isPasswordVisible,
      isValid: isValid ?? this.isValid,
    );
  }
}
