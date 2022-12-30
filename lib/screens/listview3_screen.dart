import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class Listview3Screen extends StatelessWidget {
  const Listview3Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material de Apoyo: Materiales'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: const [
          CustomCardT1(
            descripcion:
                'Un condensador es un dispositivo que almacena energía eléctrica. Es un componente electrónico pasivo con dos terminales. El efecto de un capacitor se conoce como capacitancia.',
          ),
          CustomCardT2(
            imageURL:
                'https://upload.wikimedia.org/wikipedia/commons/b/b9/Capacitors_%287189597135%29.jpg',
            name: 'CAPACITORES',
          ),
          SizedBox(height: 10),
          CustomCardT1(
            descripcion:
                'Se le denomina resistencia eléctrica a la oposición al flujo de corriente eléctrica a través de un conductor.​​ La unidad de resistencia en el Sistema Internacional es el ohmio.',
          ),
          CustomCardT2(
            imageURL:
                'https://tallertronica.files.wordpress.com/2020/01/distintos-tipos-de-resistencias1.jpg',
            name: 'RESISTENCIAS',
          ),
          SizedBox(height: 10),
          CustomCardT1(
            descripcion:
                'Diodo emisor de luz o led, se trata de un diodo de unión p-n, que emite luz cuando es alimentado. Este efecto se denomina electroluminiscencia, y el color de la luz generada (que depende de la energía de los fotones emitidos) viene determinado por el ancho de la banda prohibida del semiconductor.',
          ),
          CustomCardT2(
            imageURL:
                'https://universo.space/blackhole/uploads/2018/06/LEDS-%C2%BFaliados-o-nuestros-enemigos-involuntarios.jpg',
            name: 'LED',
          ),
          SizedBox(height: 10),
          CustomCardT1(
            descripcion:
                'También conocido como inductor, una bobina es el componente pasivo de un circuito eléctrico que almacena energía como campo magnético a través del fenómeno conocido como inducción. Generalmente, esta bobina suele ser un cilindro en torno al cual se enrosca el alambre o hilo de cobre a modo de sujetos inductores.',
          ),
          CustomCardT2(
            imageURL:
                'https://thumbs.dreamstime.com/b/bobina-de-alambre-cobre-del-inductor-componentes-electr%C3%B3nicos-soldados-en-la-tarjeta-circuitos-bobinas-inducci%C3%B3n-toroidales-y-169437272.jpg',
            name: 'BOBINA',
          ),
          SizedBox(height: 10),
          CustomCardT1(
            descripcion:
                'El transistor es un dispositivo electrónico semiconductor. Permite el paso de una señal en respuesta a otra. Se puede configurar o "comportar" como amplificador, oscilador, conmutador o rectificador.',
          ),
          CustomCardT2(
            imageURL:
                'https://s1.static.brasilescola.uol.com.br/be/conteudo/images/transistores.jpg',
            name: 'TRANSISTOR',
          ),
          SizedBox(height: 10),
          CustomCardT1(
            descripcion:
                'Un diodo es un dispositivo semiconductor que actúa esencialmente como un interruptor unidireccional para la corriente. Permite que la corriente fluya en una dirección, pero no permite a la corriente fluir en la dirección opuesta.',
          ),
          CustomCardT2(
            imageURL:
                'https://i.ebayimg.com/images/g/j3sAAOSwEK9W~o1x/s-l500.jpg',
            name: 'DIODO',
          ),
        ],
      ),
    );
  }
}
