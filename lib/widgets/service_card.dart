
import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  final String nombre;
  final String descripcion;
  final IconData icono;
  final VoidCallback onVerDetalle;

  const ServiceCard({
    super.key,
    required this.nombre,
    required this.descripcion,
    required this.icono,
    required this.onVerDetalle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  icono,
                  size: 36,
                  color: Colors.blue,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    nombre,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(descripcion),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: onVerDetalle,
              child: const Text('Ver detalle'),
            ),
          ],
        ),
      ),
    );
  }
}