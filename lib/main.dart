import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Kisis Servicios'),
        ),
          body: Padding(
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
                const SizedBox(height: 16),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.receipt_long,
                          size: 40,
                          color: Colors.blue,
                        ),
                        const SizedBox(height: 12),
                        const Text(
                          'Facturación electrónica',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Emita comprobantes electrónicos '
                              'y organice las ventas de su negocio.',
                        ),

                        const SizedBox(height: 16),
                        Builder(
                          builder: (buttonContext) {
                            return ElevatedButton(
                              onPressed: () {
                                ScaffoldMessenger.of(buttonContext).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                      'Seleccionó Facturación electrónica',
                                    ),
                                  ),
                                );
                              },
                              child: const Text('Ver detalle'),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
      ),
    );
  }
}