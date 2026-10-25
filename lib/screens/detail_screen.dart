
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String nombreServicio;

  const DetailScreen({
    super.key,
    required this.nombreServicio,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalle del servicio'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Text(
          nombreServicio,
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}