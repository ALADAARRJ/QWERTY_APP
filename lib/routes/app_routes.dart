import 'package:flutter/material.dart';
import 'package:qwertyu/models/models.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // MenuOption(
    //     route: 'listview6',
    //     name: 'Calculadora de Resistencias de 4 Bandas',
    //     screen: const CalculadoraResistenciasScreen2(),
    //     icon: Icons.calculate),
    MenuOption(
        route: 'listview1',
        name: 'Calculadora de Resistencias de 5 Bandas',
        screen: const CalculadoraResistenciasScreen(),
        icon: Icons.calculate),
    MenuOption(
        route: 'listview2',
        name: 'Material de Apoyo: Materiales',
        screen: const Listview3Screen(),
        icon: Icons.book),
    MenuOption(
        route: 'listview3',
        name: 'Material de Apoyo: Conceptos',
        screen: const Listview1Screen(),
        icon: Icons.book),
    MenuOption(
        route: 'listview4',
        name: 'Material de Apoyo: Herramientas ',
        screen: const Listview4Screen(),
        icon: Icons.book),
    MenuOption(
        route: 'listview5',
        name: 'Material de Apoyo: Recomendaciones',
        screen: const Listview5Screen(),
        icon: Icons.book),
  ];
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const Listview1Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const Listview1Screen(),
    );
  }
}
