import 'package:flutter/material.dart';
import 'Principal.dart';
import 'Map1.dart';
import 'Mapa2.dart';
import 'map3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Rotas nomeadas',
        initialRoute: '/',
        routes: {
          '/': (context) => Principal(),
          '/segunda': (context) => const Map1(),
          '/terceira': (context) => const Mapa2(),
          '/quarta': (context) => const map3(),
        }
    );
  }
}