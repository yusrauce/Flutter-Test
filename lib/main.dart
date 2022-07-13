import 'package:flutter/material.dart';
import 'package:flutter_all/healty_food.dart';
import 'package:flutter_all/splash.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
     '/healyt': (BuildContext context) => new HealtyFoodView(),
      },
      home: Scaffold(
        body: SplashScreen(),
      ),
    );
  }
}