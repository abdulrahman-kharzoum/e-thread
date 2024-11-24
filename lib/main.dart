import 'package:et_driver/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'services/navigation/route_handler.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

final rootScaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    return MaterialApp.router(
      theme: ThemeData.dark(),
      scaffoldMessengerKey: rootScaffoldMessengerKey,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      title: 'ETDriver',
      routerConfig: appRouter.config(
        navigatorObservers: () => [],
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
