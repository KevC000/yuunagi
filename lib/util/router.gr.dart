// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:yuunagi/presentation/pages/dictionary_search_page.dart' as _i1;
import 'package:yuunagi/presentation/yuunagi_app.dart' as _i2;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    DictionarySearchPageRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.DictionarySearchPage(),
      );
    },
    YuunagiAppRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.YuunagiApp(),
      );
    },
  };
}

/// generated route for
/// [_i1.DictionarySearchPage]
class DictionarySearchPageRoute extends _i3.PageRouteInfo<void> {
  const DictionarySearchPageRoute({List<_i3.PageRouteInfo>? children})
      : super(
          DictionarySearchPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'DictionarySearchPageRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.YuunagiApp]
class YuunagiAppRoute extends _i3.PageRouteInfo<void> {
  const YuunagiAppRoute({List<_i3.PageRouteInfo>? children})
      : super(
          YuunagiAppRoute.name,
          initialChildren: children,
        );

  static const String name = 'YuunagiAppRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
