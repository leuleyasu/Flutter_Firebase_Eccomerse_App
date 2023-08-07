
import 'package:client/feature/Business/bloc/Cart/bloc/cart_bloc.dart';
import 'package:client/feature/Presentation/Screen/export.dart';
import 'package:client/feature/config/approuter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'feature/Business/bloc/wishlist/bloc/wishlist_bloc.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        // BlocProvider<WishlistBloc>(
        //   create: (_) => WishlistBloc()
        // ),
          BlocProvider<CartBloc>(
          create: (_) => CartBloc()
        )
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
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
 ),
          onGenerateRoute: AppRouter.onGenerateRoute,
          initialRoute: HomeScreen.routename,

    );

  }
}
