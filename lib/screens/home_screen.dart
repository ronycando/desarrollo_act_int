import 'package:flutter/material.dart';
import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const azul = Color(0xFF17324D);
  static const verde = Color(0xFF007F82);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F6FA),
      appBar: AppBar(
        title: const Text('CYNERIS'),
        backgroundColor: azul,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [azul, verde],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(24),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.hub_outlined,
                  color: Colors.white,
                  size: 48,
                ),
                SizedBox(height: 20),
                Text(
                  'Tecnología que\nimpulsa tu negocio',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  'Soluciones digitales, desarrollo y soporte '
                      'en un solo lugar.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 28),
          const Text(
            'Explora nuestros servicios',
            style: TextStyle(
              color: azul,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          _servicio(
            context,
            icono: Icons.receipt_long_outlined,
            nombre: 'Facturación electrónica',
            resumen: 'Organiza tus ventas y comprobantes.',
            detalle:
            'Emisión de comprobantes electrónicos y organización '
                'de ventas.\n\nIncluye configuración inicial, '
                'capacitación y acompañamiento.',
          ),
          _servicio(
            context,
            icono: Icons.code,
            nombre: 'Desarrollo de sistemas',
            resumen: 'Software adaptado a tu empresa.',
            detalle:
            'Desarrollo de aplicaciones según los procesos '
                'de cada empresa.\n\nIncluye análisis de '
                'requerimientos, diseño, desarrollo y pruebas.',
          ),
          _servicio(
            context,
            icono: Icons.support_agent,
            nombre: 'Soporte técnico',
            resumen: 'Mantén tu tecnología funcionando.',
            detalle:
            'Asistencia para equipos, servidores y redes.'
                '\n\nIncluye diagnóstico, mantenimiento '
                'y revisión de recursos tecnológicos.',
          ),
          const SizedBox(height: 12),
          const Center(
            child: Text(
              'CYNERIS · Soluciones tecnológicas',
              style: TextStyle(color: verde),
            ),
          ),
        ],
      ),
    );
  }

  Widget _servicio(
      BuildContext context, {
        required IconData icono,
        required String nombre,
        required String resumen,
        required String detalle,
      }) {
    return Card(
      color: Colors.white,
      elevation: 0,
      margin: const EdgeInsets.only(bottom: 14),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
        side: const BorderSide(color: Color(0xFFDDE5ED)),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: CircleAvatar(
          backgroundColor: const Color(0xFFDDF3F0),
          child: Icon(icono, color: verde),
        ),
        title: Text(
          nombre,
          style: const TextStyle(
            color: azul,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 6),
          child: Text(resumen),
        ),
        trailing: const Icon(
          Icons.chevron_right,
          color: verde,
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => DetailScreen(
                nombreServicio: nombre,
                descripcion: detalle,
              ),
            ),
          );
        },
      ),
    );
  }
}