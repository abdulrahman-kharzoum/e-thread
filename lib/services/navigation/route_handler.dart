import 'package:auto_route/auto_route.dart';
import 'package:et_driver/services/navigation/route_handler.gr.dart';
import 'package:et_driver/services/navigation/routes.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Screen,Route',
)
class AppRouter extends RootStackRouter {
  AppRouter();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: Routes.startup,
          page: StartupRoute.page,
        ),
        AutoRoute(
          path: Routes.home,
          page: HomeRoute.page,
        ),
        AutoRoute(
          path: Routes.login,
          page: LoginRoute.page,
          initial: true,
        ),
        AutoRoute(
          path: Routes.textRecognition,
          page: RecognitionRoute.page,
        ),
      ];
}
