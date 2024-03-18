import 'package:bookly/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/Features/home/presentaion/manger/main_list_view_cubit/main_list_view_cubit.dart';
import 'package:bookly/Features/home/presentaion/manger/newset_books_cubit/newset_books_cubit.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/service-locator.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        BlocProvider(
          create: (context) => MainListViewBooksCubit(
            getIt.get<HomeRepoImplementaion>(),
          )..getMainBooksListView(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
