import 'package:auto_route/auto_route.dart';
import 'package:rhymer/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page, path: '/'),
    AutoRoute(page: FavoritesRoute.page, path: '/favorites'),
    AutoRoute(page: SearchRoute.page, path: '/search'),
    AutoRoute(page: PoemsRoute.page, path: '/poems'),
    AutoRoute(page: SettingRoute.page, path: '/settings'),
  ];
}
