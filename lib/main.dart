import 'package:flutter/material.dart';
import 'package:pau_sosyal/pages/splash_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Inter"),
      title: "Pau Sosyal",
      home: SplashPage(),
    );
  }
}
