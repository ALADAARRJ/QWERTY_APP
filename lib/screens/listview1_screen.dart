import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class Listview1Screen extends StatelessWidget {
  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material de Apoyo: Conceptos'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: const [
          SizedBox(height: 10),
          CustomCardT1(
            descripcion:
                'La corriente continua (CC) es la corriente eléctrica que fluye de forma constante en una dirección, como la que fluye en una linterna o en cualquier otro aparato con baterías es corriente continua.',
          ),
          CustomCardT2(
            imageURL:
                'https://concepto.de/wp-content/uploads/2018/08/bater%C3%ADa-e1534771559419.jpg',
            name: 'CORRIENTE DIRECTA',
          ),
          SizedBox(height: 10),
          CustomCardT1(
            descripcion:
                'La corriente alterna (CA) es un tipo de corriente eléctrica, en la que la dirección del flujo de electrones va y viene a intervalos regulares o en ciclos. La corriente que fluye por las líneas eléctricas y la electricidad disponible normalmente en las casas procedente de los enchufes de la pared es corriente alterna.',
          ),
          CustomCardT2(
            imageURL:
                'https://vrelectrificaciones.com/wp-content/uploads/2020/04/Blog02.jpg',
            name: 'CORRIENTE ALTERNA',
          ),
          SizedBox(height: 10),
          CustomCardT1(
            descripcion:
                'Ley de Ohm. La intensidad de corriente que atraviesa un circuito es directamente proporcional al voltaje o tensión del mismo e inversamente proporcional a la resistencia que presenta.',
          ),
          CustomCardT2(
            imageURL:
                'https://sites.google.com/site/1ofpbfrancisco/_/rsrc/1508316864183/1-5-ley-de-ohm/calculadora-ley-ohm.png',
            name: 'LEY DE OHM',
          ),
          SizedBox(height: 10),
          CustomCardT1(
            descripcion:
                'Es la propiedad que tienen los cuerpos para mantener una carga eléctrica. La capacidad es también una medida de la cantidad de energía eléctrica almacenada para una diferencia de potencial eléctrico dada.',
          ),
          CustomCardT2(
            imageURL:
                'https://www.wikihow.com/images_en/thumb/0/01/Discharge-a-Capacitor-Step-4-Version-2.jpg/v4-460px-Discharge-a-Capacitor-Step-4-Version-2.jpg',
            name: 'CAPACITANCIA',
          ),
          SizedBox(height: 10),
          CustomCardT1(
            descripcion:
                'Un inductor es un componente que consiste en un alambre u otro conductor conformado para aumentar el flujo magnético a través del circuito, normalmente en forma de bobina o hélice, con dos terminales.',
          ),
          CustomCardT2(
            imageURL:
                'https://www.shutterstock.com/image-vector/toroidal-iron-core-air-coil-260nw-1444249592.jpg',
            name: 'INDUCTOR',
          ),
        ],
      ),
    );
  }
}
