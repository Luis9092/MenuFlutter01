import 'package:flutter/material.dart';

class FavouritesPage extends StatelessWidget {
  const FavouritesPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Escaneando Archivos'),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
      );
}
