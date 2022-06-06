import 'package:app_flutter_components/routes/router.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Taller Flutter',
      initialRoute: Routes.rutaInicial,
      routes: Routes.appRoutes(),
    );
  }
}
