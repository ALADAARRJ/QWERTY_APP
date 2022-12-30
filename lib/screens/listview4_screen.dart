import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class Listview4Screen extends StatelessWidget {
  const Listview4Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material de Apoyo: Herramientas'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: const [
          SizedBox(height: 10),
          CustomCardT1(
            descripcion:
                'Es un instrumento de comprobación utilizado para medir dos o más valores eléctricos, principalmente tensión (voltios), corriente (amperios) y resistencia (ohmios).',
          ),
          CustomCardT2(
            imageURL:
                'https://www.tecsaqro.com.mx/wp-content/uploads/2020/02/multimetro.jpg',
            name: 'MULTIMETRO',
          ),
          SizedBox(height: 10),
          CustomCardT1(
            descripcion:
                'El cautín o estación de soldadura es el instrumento que nos permite soldar los diferentes puntos de unión existentes en los equipos electrónicos.',
          ),
          CustomCardT2(
            imageURL:
                'https://http2.mlstatic.com/D_NQ_NP_802611-MLM31937849442_082019-O.jpg',
            name: 'CAUTIN',
          ),
          SizedBox(height: 10),
          CustomCardT1(
            descripcion:
                'Es un material de aportación, sirve para juntar las piezas en la PCB. La temperatura de fusión del material de soldadura es inferior a la de los materiales de la pieza. Por este motivo, durante el proceso sólo se funde la soldadura de estaño.',
          ),
          CustomCardT2(
            imageURL:
                'https://www.hogarmania.com/archivos/202103/como-soldar-con-estano-1-XxXx80.jpg',
            name: 'SOLDADURA DE ESTAÑO',
          ),
          SizedBox(height: 10),
          CustomCardT1(
            descripcion:
                'Una fuente de alimentación es el equipo que se encarga de transformar la corriente alterna (AC), que es la corriente que proviene directamente de la línea eléctrica, en corriente continua (DC), que es la que necesitan la mayoría de los dispositivos para funcionar correctamente.',
          ),
          CustomCardT2(
            imageURL:
                'https://www.instrumentacionhoy.com/imagenes/2014/03/CPX200D.jpg',
            name: 'FUENTE DE ALIMENTACION',
          ),
          SizedBox(height: 10),
          CustomCardT1(
            descripcion:
                'Es una herramienta pequeña de diseño ergonómico que cuenta con una forma de alicate o pinza, y se utiliza de manera eficiente para corrugar o crimpar conectores en una variedad de cables por medio de una pequeña deformación que mantiene unida o juntas ambas partes.',
          ),
          CustomCardT2(
            imageURL:
                'https://cdn.shopify.com/s/files/1/0054/2883/8469/products/CRIMPRJ4511B-1.png',
            name: 'PINZAS CRIMPADORAS',
          ),
          SizedBox(height: 10),
          CustomCardT1(
            descripcion:
                'Caimán eléctrico que te permite hacer puentes, pruebas, pasar corriente, alimentar circuitos eléctricos y/o electrónicos, conectar bocinas, ventiladores, motores entre otros sin necesidad de soldar cables. Las pinzas tipo caimán son aquellas de metal con resortes y mandíbulas largas y dentadas.',
          ),
          CustomCardT2(
            imageURL:
                'https://sandorobotics.com/wp-content/uploads/2016/09/5-Color-100pcs-Double-ended-Test-Leads-Alligator-Crocodile-Roach-Clip-Jumper-Wire.jpg',
            name: 'CAIMANES',
          ),
          SizedBox(height: 10),
          CustomCardT1(
            descripcion:
                'Un jumper o saltador es un elemento que permite cerrar el circuito eléctrico del que forma parte dos conexiones. La función del cable macho-macho es con frecuencia usado en el tablero protoboard haciendo posible la conexión de dos elementos ingresados en dicho tablero.',
          ),
          CustomCardT2(
            imageURL:
                'https://tiendadeelectronica.mx/wp-content/uploads/2018/07/HoBiMart-30-40-P-20-cm-Dupont-l-nea-cable-de-puente-cables-macho-a-macho.jpg',
            name: 'DUPONT',
          ),
          SizedBox(height: 10),
          CustomCardT1(
            descripcion:
                'Una protoboard, o breadboard, es prácticamente una PCB temporal con una forma y tamaño generalizados. Utilizada comúnmente para pruebas y prototipos temporales de circuitos. Se usa insertando las terminales de los dispositivos electrónicos en los orificios de la protoboard de la forma en que tengan continuidad.',
          ),
          CustomCardT2(
            imageURL:
                'https://hetpro-store.com/images/detailed/15/Protoboard-transparente-Medi-PRMT1010-imagen-1.jpg',
            name: 'PROTOBOARD',
          ),
        ],
      ),
    );
  }
}
