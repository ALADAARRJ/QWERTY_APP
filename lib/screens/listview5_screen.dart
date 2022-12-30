import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class Listview5Screen extends StatelessWidget {
  const Listview5Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material de Apoyo: Recomendaciones'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: const [
          CustomCardT1(
            descripcion:
                'Un excelente lugar para obtener cientos de Datasheets, es el sitio web AllDataSheet, aqui podras encontrar la hoja de datos de casi cualquier componente electronico',
          ),
          CustomCardT2(
            imageURL: 'https://i.ytimg.com/vi/D0eSiPxHp6I/maxresdefault.jpg',
            name: 'ALLDATASHEET',
          ),
          SizedBox(height: 10),
          CustomCardT1(
            descripcion:
                'Si tu proposito es entrar al mundo de la electornica, de manera economica y segura, usa Tinkercad, este sitio web te permitirá simular un ambiente de electronica con cientos de elementos a tu disposición',
          ),
          CustomCardT2(
            imageURL:
                'https://upload.wikimedia.org/wikipedia/commons/6/67/Tinkercad_1.png',
            name: 'TINKERCAD',
          ),
        ],
      ),
    );
  }
}
