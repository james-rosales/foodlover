import 'package:flutter/material.dart';
import 'package:foodbank/pages/home/view/view.dart';
import 'package:foodbank/pages/login/login.dart';
import 'package:foodbank/pages/register/view/register_page.dart';
import 'package:go_router/go_router.dart';
import 'pages/splashscreen/view/view.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashscreenPage();
      },
    ),
    GoRoute(
      path: '/welcomepage',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashscreenPage();
      },
    ),
    GoRoute(
      path: '/home',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
    ),
    GoRoute(
      path: '/login',
      builder: (BuildContext context, GoRouterState state) {
        return const LoginPage();
      },
    ),
    GoRoute(
      path: '/register',
      builder: (BuildContext context, GoRouterState state) {
        return const RegisterPage();
      },
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: _router,
      title: 'Food Bank',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              30,
            ),
          ),
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
        ),
        tabBarTheme: TabBarTheme(
          indicator: const UnderlineTabIndicator(
            borderSide: BorderSide(
              color: Colors.orange,
              width: 3.0,
            ),
            insets: EdgeInsets.symmetric(
              horizontal: 30.0,
            ),
          ),
          overlayColor: MaterialStateProperty.all(Colors.transparent),
          labelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            textStyle: MaterialStateProperty.all(
              const TextStyle(
                fontFamily: 'SF Pro',
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
            foregroundColor: MaterialStateProperty.all(
              Colors.black,
            ),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'SF Pro',
              fontSize: 17,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                30,
              ),
            ),
            backgroundColor: Colors.orangeAccent,
          ),
        ),
        textTheme: const TextTheme(
          caption: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'SF Pro',
            fontSize: 12,
          ),
          bodyText2: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        scaffoldBackgroundColor: const Color.fromARGB(237, 237, 237, 237),
        fontFamily: 'SF Pro',
        primarySwatch: Colors.orange,
      ),
    );
  }
}
