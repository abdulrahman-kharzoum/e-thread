// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:et_driver/features/outh/login_screen.dart' as _i2;
import 'package:et_driver/features/startup/startup_screen.dart' as _i4;
import 'package:et_driver/home_screen.dart' as _i1;
import 'package:et_driver/recognition_screen.dart' as _i3;
import 'package:flutter/material.dart' as _i6;
import 'package:image_picker/image_picker.dart' as _i7;

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i1.HomeScreen();
    },
  );
}

/// generated route for
/// [_i2.LoginScreen]
class LoginRoute extends _i5.PageRouteInfo<void> {
  const LoginRoute({List<_i5.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return _i2.LoginScreen();
    },
  );
}

/// generated route for
/// [_i3.RecognitionScreen]
class RecognitionRoute extends _i5.PageRouteInfo<RecognitionRouteArgs> {
  RecognitionRoute({
    _i6.Key? key,
    required _i7.XFile xFile,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          RecognitionRoute.name,
          args: RecognitionRouteArgs(
            key: key,
            xFile: xFile,
          ),
          initialChildren: children,
        );

  static const String name = 'RecognitionRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<RecognitionRouteArgs>();
      return _i3.RecognitionScreen(
        key: args.key,
        xFile: args.xFile,
      );
    },
  );
}

class RecognitionRouteArgs {
  const RecognitionRouteArgs({
    this.key,
    required this.xFile,
  });

  final _i6.Key? key;

  final _i7.XFile xFile;

  @override
  String toString() {
    return 'RecognitionRouteArgs{key: $key, xFile: $xFile}';
  }
}

/// generated route for
/// [_i4.StartupScreen]
class StartupRoute extends _i5.PageRouteInfo<void> {
  const StartupRoute({List<_i5.PageRouteInfo>? children})
      : super(
          StartupRoute.name,
          initialChildren: children,
        );

  static const String name = 'StartupRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i4.StartupScreen();
    },
  );
}
