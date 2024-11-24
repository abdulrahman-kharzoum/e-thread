import 'package:equatable/equatable.dart';

// This class represent all the states for the  start up
class StartupState extends Equatable {
  // initial state for the login screen
  factory StartupState.initial() => const StartupState(isLoading: true);

  // Widget constructor
  const StartupState({
    this.isLoading = false,
    this.errorMessage,
  });

  ///Loading state where we should show loader in case true
  final bool isLoading;

  // the error message to be shown
  final String? errorMessage;

  // use this method to update the state with specific data
  StartupState copyWith({
    final bool? isLoading,
    final String? errorMessage,
  }) =>
      StartupState(
        isLoading: isLoading ?? this.isLoading,
        errorMessage: errorMessage,
      );

  @override
  List<Object?> get props => [
        isLoading,
        errorMessage,
      ];
}
