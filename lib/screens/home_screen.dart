import 'package:flutter/material.dart';
import '../widgets/service_card.dart';
import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void abrirDetalle(
      BuildContext context,
      String nombreServicio,
      ) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailScreen(
          nombreServicio: nombreServicio,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kisis Servicios'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Nuestros servicios',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Seleccione un servicio para conocer más.',
            ),
            const SizedBox(height: 20),
            ServiceCard(
              nombre: 'Facturación electrónica',
              descripcion:
              'Emita comprobantes electrónicos '
                  'y organice las ventas de su negocio.',
              icono: Icons.receipt_long,
              onVerDetalle: () {
                abrirDetalle(
                  context,
                  'Facturación electrónica',
                );
              },
            ),
            ServiceCard(
              nombre: 'Desarrollo de sistemas',
              descripcion:
              'Aplicaciones adaptadas a los procesos '
                  'y necesidades de su empresa.',
              icono: Icons.code,
              onVerDetalle: () {
                abrirDetalle(
                  context,
                  'Desarrollo de sistemas',
                );
              },
            ),
            ServiceCard(
              nombre: 'Soporte técnico',
              descripcion:
              'Asistencia para equipos, servidores '
                  'y redes de su negocio.',
              icono: Icons.support_agent,
              onVerDetalle: () {
                abrirDetalle(
                  context,
                  'Soporte técnico',
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}