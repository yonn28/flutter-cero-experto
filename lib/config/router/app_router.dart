import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: "/",
  routes: <RouteBase>[
    GoRoute(
      name: HomeScreen.name,
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
    ),
    GoRoute(
      name: BottonsScreen.name,
      path: '/buttons',
      builder: (BuildContext context, GoRouterState state) {
        return const BottonsScreen();
      },
    ),
    GoRoute(
      name: CardsScreen.name,
      path: '/cards',
      builder: (BuildContext context, GoRouterState state) {
        return const CardsScreen();
      },
    ),
    GoRoute(
      name: ProgressScreen.name,
      path: '/progress',
      builder: (BuildContext context, GoRouterState state) {
        return const ProgressScreen();
      },
    ),
    GoRoute(
      name: SnackbarScreen.name,
      path: '/snackbars',
      builder: (BuildContext context, GoRouterState state) {
        return const SnackbarScreen();
      },
    ),
    GoRoute(
      name: AnimatedScreeen.name,
      path: '/animated',
      builder: (BuildContext context, GoRouterState state) {
        return const AnimatedScreeen();
      },
    ),
    GoRoute(
      name: UiControlsScreen.name,
      path: '/ui-controls',
      builder: (BuildContext context, GoRouterState state) {
        return const UiControlsScreen();
      },
    ),
    GoRoute(
      name: AppTutorialScreen.name,
      path: '/tutorial',
      builder: (BuildContext context, GoRouterState state) {
        return const AppTutorialScreen();
      },
    ),
    GoRoute(
      name: InifiniteScrollScreen.name,
      path: '/scroll',
      builder: (BuildContext context, GoRouterState state) {
        return const InifiniteScrollScreen();
      },
    )
  ],
);