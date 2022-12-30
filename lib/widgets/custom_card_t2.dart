import 'package:flutter/material.dart';

class CustomCardT2 extends StatelessWidget {
  final String imageURL;
  final String name;
  const CustomCardT2({super.key, required this.imageURL, required this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 20,
      child: Column(children: [
        FadeInImage(
          image: NetworkImage(imageURL),
          placeholder: const AssetImage('assets/load.gif'),
          width: double.infinity,
          height: 220,
          fit: BoxFit.cover,
          fadeOutDuration: const Duration(milliseconds: 300),
        ),
        Container(
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: Text(name))
      ]),
    );
  }
}
