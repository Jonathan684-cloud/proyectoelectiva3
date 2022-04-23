import 'package:burgerdelivery/screens/screen_export.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'login',
        name: 'Iniciar Sesion',
        screen: const LoginScreen(),
        icon: Icons.login_outlined),
    MenuOption(
        route: 'registro',
        name: 'Crear cuenta',
        screen: const RegistroScreen(),
        icon: Icons.app_registration),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home': (BuildContext context) => HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }
}

class AppRouteSesion {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'perfil',
        name: 'Mi Perfil',
        screen: const MiPerfilScreen(),
        icon: Icons.person),
    MenuOption(
        route: 'pedidos',
        name: 'Mis Pedidos',
        screen: const PedidoActualScreen(),
        icon: Icons.book_online),
    MenuOption(
        route: 'historial',
        name: 'Mi Historial de Pedidos',
        screen: HistorialPedidosScreen(),
        icon: Icons.app_registration),
    MenuOption(
        route: 'login',
        name: 'Iniciar Sesion',
        screen: const LoginScreen(),
        icon: Icons.login_outlined),
    MenuOption(
        route: 'registro',
        name: 'Crear cuenta',
        screen: const RegistroScreen(),
        icon: Icons.app_registration),
    MenuOption(
        route: 'home',
        name: 'Cerrar Sesion',
        screen: const HomeScreen(),
        icon: Icons.close_outlined),
    MenuOption(
        route: 'promo',
        name: 'Promocion Dia',
        screen: const PromoDiariaScreen(),
        icon: Icons.food_bank_rounded)
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home': (BuildContext context) => HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }
}
