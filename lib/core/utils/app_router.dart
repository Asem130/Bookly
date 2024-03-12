import 'package:bookly/Features/home/presentaion/views/book_detiels_view.dart';
import 'package:bookly/Features/home/presentaion/views/home_view.dart';
import 'package:bookly/Features/search/presentaion/views/search_view_.dart';
import 'package:bookly/Features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/HomewView';
  static const kBookDetailesView = '/BookDetailesView';
  static const kSearchView = '/SearchView';
  static GoRouter router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashView();
      },
    ),
    GoRoute(
      path: kSearchView,
      builder: (BuildContext context, GoRouterState state) {
        return const SearchView();
      },
    ),
    GoRoute(
      path: kHomeView,
      builder: (BuildContext context, GoRouterState state) {
        return const HomeView();
      },
    ),
    GoRoute(
      path: kBookDetailesView,
      builder: (BuildContext context, GoRouterState state) {
        return const BookDetielsView();
      },
    ),
  ]);
}
