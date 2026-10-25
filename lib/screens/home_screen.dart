import 'package:flutter/material.dart';
import '../widgets/service_card.dart';
import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void abrirDetalle(
      BuildContext context,
      String nombreServicio,
      String descripcion,
      ) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailScreen(
          nombreServicio: nombreServicio,
          descripcion: descripcion,
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
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: const Color(0xFFE3F2FD),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Image.asset(
                  'assets/images/servicios.png',
                  height: 90,
                  fit: BoxFit.contain,
                  semanticLabel: 'Servicios tecnológicos',
                ),
              ),
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
                style: TextStyle(fontSize: 16),
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
                    'Este servicio permite emitir comprobantes '
                        'electrónicos y organizar la información '
                        'de ventas de su negocio.\n\n'
                        'Incluye configuración inicial, '
                        'capacitación y acompañamiento '
                        'para utilizar el sistema.',
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
                    'Diseñamos aplicaciones según los procesos '
                        'y necesidades de cada empresa.\n\n'
                        'El servicio contempla el análisis de '
                        'requerimientos, diseño de interfaces, '
                        'desarrollo y pruebas de funcionamiento.',
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
                    'Brindamos asistencia para mantener '
                        'operativos los recursos tecnológicos '
                        'de su negocio.\n\n'
                        'El servicio incluye diagnóstico de '
                        'problemas, mantenimiento y revisión '
                        'de equipos, servidores y redes.',
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}