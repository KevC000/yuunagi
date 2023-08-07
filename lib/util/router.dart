import 'package:go_router/go_router.dart';
import 'package:yuunagi/presentation/pages/dictionary_search_page.dart';
import 'package:yuunagi/presentation/yuunagi_app.dart';

class AppRouter {
  GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const YuunagiApp();
        },
      ),
      GoRoute(
        path: '/search',
        builder: (context, state) {
          return const DictionarySearchPage();
        },
      ),
    ],
  );
}
