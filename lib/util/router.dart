import 'package:auto_route/auto_route.dart';
import 'package:yuunagi/util/router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Route')  
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: YuunagiAppRoute.page, initial: true),
        AutoRoute(page: DictionarySearchPageRoute.page, path: '/search')
      ];
}
