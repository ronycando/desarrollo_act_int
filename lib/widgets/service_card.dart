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
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color(0xFFE3F2FD),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    icono,
                    size: 32,
                    color: Colors.blue,
                  ),
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
            Text(
              descripcion,
              style: const TextStyle(
                fontSize: 16,
                height: 1.4,
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: onVerDetalle,
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(0, 48),
              ),
              child: const Text('Ver detalle'),
            ),
          ],
        ),
      ),
    );
  }
}