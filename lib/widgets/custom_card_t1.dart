import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class CustomCardT1 extends StatelessWidget {
  final String descripcion;
  const CustomCardT1({
    Key? key,
    required this.descripcion,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        ListTile(
          leading: const Icon(Icons.book, color: AppTheme.primary),
          subtitle: Text(descripcion),
        ),
      ]),
    );
  }
}
