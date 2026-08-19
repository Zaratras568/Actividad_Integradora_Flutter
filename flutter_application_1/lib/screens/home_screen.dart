import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/lugar_card.dart';
import 'package:flutter_application_1/data/lugares_data.dart';
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context){
    //crea la pantalla principal con un AppBar y una lista de lugares
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        title: Text(title),
      ),
      body: ListView.builder(
        itemCount: lugaresEcuador.length,
        itemBuilder: (context, index) {
          return LugarCard(lugar: lugaresEcuador[index]);
        },
      ),
    );
  }
}
