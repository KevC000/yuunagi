import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yuunagi/util/routers/app_router.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.red,
    ));

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        splashColor: Colors.red,
        canvasColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
      ),
      title: 'Yuunagi',
      routerConfig: _appRouter.config(),
    );
  }
}
