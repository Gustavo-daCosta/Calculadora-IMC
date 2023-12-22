import 'package:calculadora_imc/themes/colors_pallete.dart';
import 'package:calculadora_imc/widgets/compact_input_area.dart';
import 'package:calculadora_imc/widgets/patient_area.dart';
import 'package:calculadora_imc/global/globals.dart' as globals;
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
              children: <Widget>[
                const PatientArea(
                  name: "Gustavo",
                  age: 16,
                  weight: 78,
                  height: 1.70,
                ),
                const Divider(
                  color: ColorsPallete.lightBlueColor,
                  height: 25,
                  thickness: 0.8,
                ),
                const Text(
                  "Calcule seu IMC!",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
                Row(
                  children: <Widget>[
                    CompactInputArea(
                      label: "Nome",
                      hintText: "Digite seu nome",
                      controller: globals.nameController,
                      inputType: TextInputType.name,
                    ),
                    CompactInputArea(
                      label: "Idade",
                      hintText: "Digite sua idade",
                      controller: globals.ageController,
                      inputType: const TextInputType.numberWithOptions(decimal: true),
                    ),
                  ],
                ),
                // WeightInputArea(),
                // HeightInputArea(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
