import 'package:calculadora_imc/themes/colors_pallete.dart';
import 'package:flutter/material.dart';

class PatientArea extends StatefulWidget {
  final String name;
  final int age;
  final double weight;
  final double height;

  const PatientArea({
    super.key,
    required this.name,
    required this.age,
    required this.weight,
    required this.height,
  });

  @override
  State<PatientArea> createState() => _PatientAreaState();
}

class _PatientAreaState extends State<PatientArea> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: <Widget>[
          const Text(
            "Área do Paciente",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              infoCard(
                context,
                title: "NOME",
                icon: Icons.person,
                measure: widget.name,
              ),
              infoCard(
                context,
                title: "IDADE",
                icon: Icons.group_add_rounded,
                measure: widget.age.toString(),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              infoCard(
                context,
                title: "PESO",
                icon: Icons.monitor_weight_rounded,
                measure: "${widget.weight}Kg",
              ),
              infoCard(
                context,
                title: "ALTURA",
                icon: Icons.man,
                measure: "${(widget.height)}m",
              ),
            ],
          )
        ],
      ),
    );
  }
}

Widget infoCard(
  BuildContext context,
  {
    required IconData icon,
    required String title,
    required String measure,
  }
) {
  return Card(
    child: SizedBox(
      width: (MediaQuery.of(context).size.width - 40) / 2,
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              icon,
              size: 32,
              color: ColorsPallete.lightBlueColor,
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorsPallete.lightBlueColor,
                      width: 2,
                    )
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    measure,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    )
  );
}
