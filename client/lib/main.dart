
import 'package:client/feature/Business/bloc/Cart/bloc/cart_bloc.dart';
import 'package:client/feature/Presentation/Screen/splashscree.dart';
import 'package:client/feature/config/approuter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_core/firebase_core.dart';

import 'blocobserver.dart';
Future<void> main() async {
Bloc.observer = SimpleBlocObserver();

   WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();
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
          initialRoute: SplashScreen.routename

    );

  }
}
