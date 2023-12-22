import 'package:flutter/material.dart';
import 'package:calculadora_imc/pages/home_page.dart';
import 'package:calculadora_imc/themes/theme.dart'; 

void main() => runApp(const IMCCalculatorApp());

class IMCCalculatorApp extends StatelessWidget {
  const IMCCalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculadora de IMC",
      theme: themeData(),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
