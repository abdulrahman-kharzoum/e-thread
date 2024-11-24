import 'package:et_driver/features/startup/startup_export.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StartupStateNotifier extends StateNotifier<StartupState> {
  // StartupStateNotifier class constructor
  StartupStateNotifier() : super(StartupState.initial());
}
