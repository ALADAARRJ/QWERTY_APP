import 'package:flutter/material.dart';

import '../widgets/drop.dart';

class CalculadoraResistenciasScreen extends StatelessWidget {
  const CalculadoraResistenciasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Calculadora de Resistencias de 5 bandas"),
        ),
        body: const SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: _CustomForm(),
        ));
  }
}

class _CustomForm extends StatefulWidget {
  const _CustomForm({
    Key? key,
  }) : super(key: key);

  @override
  State<_CustomForm> createState() => _CustomFormState();
}

class _CustomFormState extends State<_CustomForm> {
  String response = "0.0Ω";
  final Map<String, dynamic> formData = {};
  final GlobalKey<FormState> myFormkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: myFormkey,
      child: Column(
        children: [
          const SizedBox(height: 20),
          const Image(width: 200, image: AssetImage("assets/resistencia5.png")),
          const SizedBox(height: 20),
          CustomDropdown(
            formData: formData,
            formProperty: "banda1",
            title: "Banda 1",
            options: BANDA,
          ),
          CustomDropdown(
            formData: formData,
            formProperty: "banda2",
            title: "Banda 2",
            options: BANDA,
          ),
          CustomDropdown(
            formData: formData,
            formProperty: "banda5",
            title: "Banda 3",
            options: BANDA,
          ),
          CustomDropdown(
            formData: formData,
            formProperty: "banda3",
            title: "Multiplicador",
            options: MULTIPLICADOR,
          ),
          CustomDropdown(
            formData: formData,
            formProperty: "banda4",
            title: "Tolerancia",
            options: TOLERANCIA,
          ),
          const SizedBox(height: 10),
          Text(
            response,
            style: const TextStyle(fontSize: 30),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              bool valido = myFormkey.currentState?.validate() ?? false;
              if (!valido) return;

              double n1 = double.parse(
                  "${formData["banda1"]}${formData["banda2"]}${formData["banda5"]}");
              double n2 = double.parse("${formData["banda3"]}");
              double value = n1 * n2;
              // ignore: unused_local_variable
              String terminologia = "";
              if (value > 999999) {
                value = value / 1000000;
                terminologia = "M";
              } else if (value > 999) {
                value = value / 1000;
                terminologia = "K";
              }

              response = "$value$terminologiaΩ ${formData["banda4"]}";

              setState(() {});
            },
            style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 5)),
            child: const Text("Calcular", style: TextStyle(fontSize: 25)),
          )
        ],
      ),
    );
  }
}
