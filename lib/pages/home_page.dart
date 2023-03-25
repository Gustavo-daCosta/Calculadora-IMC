import 'package:calculadora_imc/themes/colors_pallete.dart';
import 'package:calculadora_imc/widgets/patient_area.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  List<bool> buttonsState = [false, false];

  // const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculadora de IMC"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 20,
        ),
        child: Column(
          children: <Widget>[
            // Center(
            //   child: Image.asset("assets/images/diet-illustration.png"),
            // ),

            Column(
              children: const <Widget>[
                PatientArea(
                  name: "Gustavo",
                  age: 16,
                  weight: 78,
                  height: 1.70,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
