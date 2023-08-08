import 'package:auto_route/auto_route.dart';
import 'package:yuunagi/util/routers/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: YuunagiAppRoute.page,
          initial: true,
    
          children: [
                    AutoRoute(
                page: HomePageRoute.page,
                path: 'home',
                initial: true,
              ),
              AutoRoute(
                page: ListsPageRoute.page,
                path: 'lists',
              ),
              AutoRoute(
                page: PlayPageRoute.page,
                path: 'play',
              ),
              AutoRoute(
                page: ShopPageRoute.page,
                path: 'shop',
              ),
              AutoRoute(
                page: SettingsPageRoute.page,
                path: 'settings',
              ),
              AutoRoute(
                page: ProfilePageRoute.page,
                path: 'profile',
              ),
          ]
        ),
        AutoRoute(
          page: DictionarySearchPageRoute.page,
          path: '/search',
        )
      ];
}
