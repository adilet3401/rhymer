// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:rhymer/features/favorites/view/favorites_screen.dart' as _i1;
import 'package:rhymer/features/home/view/home_screen.dart' as _i2;
import 'package:rhymer/features/poems/view/poems_screen.dart' as _i3;
import 'package:rhymer/features/search/view/search_screen.dart' as _i4;
import 'package:rhymer/features/settings/view/settings_screen.dart' as _i5;

/// generated route for
/// [_i1.FavoritesScreen]
class FavoritesRoute extends _i6.PageRouteInfo<void> {
  const FavoritesRoute({List<_i6.PageRouteInfo>? children})
    : super(FavoritesRoute.name, initialChildren: children);

  static const String name = 'FavoritesRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i1.FavoritesScreen();
    },
  );
}

/// generated route for
/// [_i2.HomeScreen]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomeScreen();
    },
  );
}

/// generated route for
/// [_i3.PoemsScreen]
class PoemsRoute extends _i6.PageRouteInfo<void> {
  const PoemsRoute({List<_i6.PageRouteInfo>? children})
    : super(PoemsRoute.name, initialChildren: children);

  static const String name = 'PoemsRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i3.PoemsScreen();
    },
  );
}

/// generated route for
/// [_i4.SearchScreen]
class SearchRoute extends _i6.PageRouteInfo<void> {
  const SearchRoute({List<_i6.PageRouteInfo>? children})
    : super(SearchRoute.name, initialChildren: children);

  static const String name = 'SearchRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i4.SearchScreen();
    },
  );
}

/// generated route for
/// [_i5.SettingScreen]
class SettingRoute extends _i6.PageRouteInfo<void> {
  const SettingRoute({List<_i6.PageRouteInfo>? children})
    : super(SettingRoute.name, initialChildren: children);

  static const String name = 'SettingRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i5.SettingScreen();
    },
  );
}
