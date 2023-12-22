import 'package:flutter/material.dart';
import 'package:calculadora_imc/global/globals.dart' as globals;

class CompactInputArea extends StatefulWidget {
  final String label;
  final String hintText;
  final TextInputType inputType;
  final TextEditingController controller;

  const CompactInputArea({
    super.key,
    required this.label,
    required this.hintText,
    required this.controller,
    this.inputType = TextInputType.text,
  });

  @override
  State<CompactInputArea> createState() => _CompactInputAreaState();
}

class _CompactInputAreaState extends State<CompactInputArea> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5, top: 10),
            child: Text(
              widget.label,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Card(
                child: SizedBox(
                  width: (MediaQuery.of(context).size.width - 45) / 2,
                  child: ListTile(
                    title: SizedBox(
                      child: TextField(
                        textCapitalization: TextCapitalization.characters,
                        decoration: InputDecoration(
                          hintText: widget.hintText,
                        ),
                        keyboardType: widget.inputType,
                        controller: globals.nameController,
                        onSubmitted: (value) {
                          setState(() {
                            debugPrint("clicado");
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
