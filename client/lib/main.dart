import 'package:client/feature/Business/bloc/wishlish_bloc.dart';
import 'package:client/feature/Presentation/Screen/Homescreen.dart';
import 'package:client/feature/Presentation/Screen/export.dart';
import 'package:client/feature/config/approuter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<WishlistBloc>(
          create: (_) => WishlistBloc()
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            // This is the theme of your application.

            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          onGenerateRoute: AppRouter.onGenerateRoute,
          initialRoute: HomeScreen.routename,

    );

  }
}
