import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
    SplashScreen({super.key});
static const String routename="/splash";
static Route route(){
  return MaterialPageRoute(builder: (ctx)=> SplashScreen(),
  settings: const RouteSettings(
    name: routename
  )

  );
}

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 5), () {Navigator.pushNamed(context, '/'); });
    return const Scaffold(
      body: Column(
mainAxisAlignment: MainAxisAlignment.center,
        children: [
Center(
  child: Text("Someones Eccomerse", style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),

),

 Center(child: Text("let's order", style: TextStyle(color: Colors.amber,fontSize: 20),))
        ],
      ),
    );
  }
}