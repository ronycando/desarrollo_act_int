import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String nombreServicio;
  final String descripcion;

  const DetailScreen({
    super.key,
    required this.nombreServicio,
    required this.descripcion,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalle del servicio'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(
              Icons.business_center,
              size: 60,
              color: Colors.blue,
            ),
            const SizedBox(height: 20),
            Text(
              nombreServicio,
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              descripcion,
              style: const TextStyle(
                fontSize: 17,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 28),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back),
              label: const Text('Volver al catálogo'),
            ),
          ],
        ),
      ),
    );
  }
}