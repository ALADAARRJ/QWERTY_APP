import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
  const CustomDropdown({
    Key? key,
    required this.formData,
    required this.formProperty,
    required this.title,
    required this.options,
  }) : super(key: key);

  final Map<String, dynamic> formData;
  final String formProperty;
  final String title;
  final List<DropdownMenuItem> options;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: const Color.fromARGB(106, 253, 253, 253),
            borderRadius: BorderRadius.circular(15)),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            DropdownButtonFormField(
              value: formData[formProperty],
              hint: const Text("Seleccionar color"),
              icon: const Icon(Icons.list_rounded),
              items: options,
              onChanged: (value) {
                formData[formProperty] = value;
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value == null) {
                  return "Tienes que seleccionar un color para la banda";
                }
                formData[formProperty] = value;
                return null;
              },
            ),
          ],
        ));
  }
}

// ignore: constant_identifier_names
const List<DropdownMenuItem<String>> BANDA = [
  DropdownMenuItem(value: "0", child: Text("Negro")),
  DropdownMenuItem(value: "1", child: Text("Marrón")),
  DropdownMenuItem(value: "2", child: Text("Rojo")),
  DropdownMenuItem(value: "3", child: Text("Naranja")),
  DropdownMenuItem(value: "4", child: Text("Amarillo")),
  DropdownMenuItem(value: "5", child: Text("Verde")),
  DropdownMenuItem(value: "6", child: Text("Azul")),
  DropdownMenuItem(value: "7", child: Text("Violeta")),
  DropdownMenuItem(value: "8", child: Text("Gris")),
  DropdownMenuItem(value: "9", child: Text("Blanco")),
];

// ignore: constant_identifier_names
const List<DropdownMenuItem<String>> MULTIPLICADOR = [
  DropdownMenuItem(value: "1", child: Text("Negro")),
  DropdownMenuItem(value: "10", child: Text("Marrón")),
  DropdownMenuItem(value: "100", child: Text("Rojo")),
  DropdownMenuItem(value: "1000", child: Text("Naranja")),
  DropdownMenuItem(value: "10000", child: Text("Amarillo")),
  DropdownMenuItem(value: "100000", child: Text("Verde")),
  DropdownMenuItem(value: "1000000", child: Text("Azul")),
  DropdownMenuItem(value: "10000000", child: Text("Violeta")),
  DropdownMenuItem(value: "100000000", child: Text("Gris")),
  DropdownMenuItem(value: "1000000000", child: Text("Blanco")),
];

// ignore: constant_identifier_names
const List<DropdownMenuItem<String>> TOLERANCIA = [
  DropdownMenuItem(value: "±1%", child: Text("Marrón")),
  DropdownMenuItem(value: "±2%", child: Text("Rojo")),
  DropdownMenuItem(value: "±0.5%", child: Text("Naranja")),
  DropdownMenuItem(value: "±0.02%", child: Text("Amarillo")),
  DropdownMenuItem(value: "±0.5%", child: Text("Verde")),
  DropdownMenuItem(value: "±0.25%", child: Text("Azul")),
  DropdownMenuItem(value: "±0.1%", child: Text("Violeta")),
  DropdownMenuItem(value: "±0.01%", child: Text("Gris")),
  DropdownMenuItem(value: "±5%", child: Text("Oro")),
  DropdownMenuItem(value: "±10%", child: Text("Plata")),
];
