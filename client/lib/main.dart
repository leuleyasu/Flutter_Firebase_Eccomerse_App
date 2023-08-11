
import 'package:client/feature/Eccomerse_Mobile_App/Data/Repositories/categorie_repositories.dart';
import 'package:client/feature/Eccomerse_Mobile_App/Presentation/Screen/splashscree.dart';
import 'package:client/feature/Eccomerse_Mobile_App/Presentation/bloc/categorie/bloc/categorie_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'blocobserver.dart';
import 'feature/Eccomerse_Mobile_App/Presentation/bloc/Cart/bloc/cart_bloc.dart';
import 'feature/Eccomerse_Mobile_App/Presentation/bloc/wishlist/bloc/wishlist_bloc.dart';
import 'feature/Eccomerse_Mobile_App/config/approuter.dart';
Future<void> main() async {
Bloc.observer = SimpleBlocObserver();

   WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();
  runApp(

    MultiBlocProvider(
      providers: [
        BlocProvider<WishlistBloc>(
          create: (_) => WishlistBloc()
        ),
          BlocProvider<CartBloc>(
          create: (_) => CartBloc()
        ),
        BlocProvider<CategorieBloc>(create: (_)=>CategorieBloc(categorieRepositories: CategorieRepositories()))
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
