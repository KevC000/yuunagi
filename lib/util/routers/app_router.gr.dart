// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:yuunagi/presentation/pages/dictionary_search_page.dart' as _i1;
import 'package:yuunagi/presentation/pages/home_page.dart' as _i3;
import 'package:yuunagi/presentation/pages/lists_page.dart' as _i4;
import 'package:yuunagi/presentation/pages/play_page.dart' as _i5;
import 'package:yuunagi/presentation/pages/profile_page.dart' as _i6;
import 'package:yuunagi/presentation/pages/settings_page.dart' as _i7;
import 'package:yuunagi/presentation/pages/shop_page.dart' as _i8;
import 'package:yuunagi/presentation/widgets/dictionary_search_widget.dart'
    as _i2;
import 'package:yuunagi/presentation/yuunagi_app.dart' as _i9;

abstract class $AppRouter extends _i10.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    DictionarySearchPageRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.DictionarySearchPage(),
      );
    },
    DictionarySearchWidgetRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.DictionarySearchWidget(),
      );
    },
    HomePageRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomePage(),
      );
    },
    ListsPageRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ListsPage(),
      );
    },
    PlayPageRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.PlayPage(),
      );
    },
    ProfilePageRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.ProfilePage(),
      );
    },
    SettingsPageRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.SettingsPage(),
      );
    },
    ShopPageRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.ShopPage(),
      );
    },
    YuunagiAppRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.YuunagiApp(),
      );
    },
  };
}

/// generated route for
/// [_i1.DictionarySearchPage]
class DictionarySearchPageRoute extends _i10.PageRouteInfo<void> {
  const DictionarySearchPageRoute({List<_i10.PageRouteInfo>? children})
      : super(
          DictionarySearchPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'DictionarySearchPageRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DictionarySearchWidget]
class DictionarySearchWidgetRoute extends _i10.PageRouteInfo<void> {
  const DictionarySearchWidgetRoute({List<_i10.PageRouteInfo>? children})
      : super(
          DictionarySearchWidgetRoute.name,
          initialChildren: children,
        );

  static const String name = 'DictionarySearchWidgetRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomePage]
class HomePageRoute extends _i10.PageRouteInfo<void> {
  const HomePageRoute({List<_i10.PageRouteInfo>? children})
      : super(
          HomePageRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomePageRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ListsPage]
class ListsPageRoute extends _i10.PageRouteInfo<void> {
  const ListsPageRoute({List<_i10.PageRouteInfo>? children})
      : super(
          ListsPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'ListsPageRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i5.PlayPage]
class PlayPageRoute extends _i10.PageRouteInfo<void> {
  const PlayPageRoute({List<_i10.PageRouteInfo>? children})
      : super(
          PlayPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'PlayPageRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i6.ProfilePage]
class ProfilePageRoute extends _i10.PageRouteInfo<void> {
  const ProfilePageRoute({List<_i10.PageRouteInfo>? children})
      : super(
          ProfilePageRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfilePageRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i7.SettingsPage]
class SettingsPageRoute extends _i10.PageRouteInfo<void> {
  const SettingsPageRoute({List<_i10.PageRouteInfo>? children})
      : super(
          SettingsPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsPageRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i8.ShopPage]
class ShopPageRoute extends _i10.PageRouteInfo<void> {
  const ShopPageRoute({List<_i10.PageRouteInfo>? children})
      : super(
          ShopPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShopPageRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i9.YuunagiApp]
class YuunagiAppRoute extends _i10.PageRouteInfo<void> {
  const YuunagiAppRoute({List<_i10.PageRouteInfo>? children})
      : super(
          YuunagiAppRoute.name,
          initialChildren: children,
        );

  static const String name = 'YuunagiAppRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}
