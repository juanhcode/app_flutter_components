import 'package:app_flutter_components/screen/screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static String rutaInicial = '/home';

  static Map<String, Widget Function(BuildContext)> appRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({
      '/home': (BuildContext context) => HomeScreen(),
      '/screenOne': (BuildContext context) => const ScreenOne(),
      '/screenTwo': (BuildContext context) => const ScreenTwo(),
      '/screenThree': (BuildContext context) => const ScreenThree(),
    });
    return appRoutes;
  }
}
