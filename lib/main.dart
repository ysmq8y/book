import 'package:book/view/book_details.dart';
import 'package:book/view/brows.dart';
import 'package:book/view/signing.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

/// The route configuration.
final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return SignInPage();
      },
    ),
    GoRoute(
      path: '/brows',
      builder: (BuildContext context, GoRouterState state) {
        return const MyHomePage(
          title: 'browse',
        );
      },
    ),
    GoRoute(
        path: "/book_details",
        builder: (BuildContext context, GoRouterState state) {
          return BookDetails();
        })
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}
