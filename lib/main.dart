import 'package:flutter/material.dart';
import 'package:myapp/pages/formulaireMarquePage.dart';
import 'package:myapp/pages/homePage.dart';
import 'package:myapp/pages/loginPage.dart';

void main() {
  runApp(CarApp());
}

class CarApp extends StatelessWidget {
  const CarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home: LoginPage()
       
       );
  }
}
