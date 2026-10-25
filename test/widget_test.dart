import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:desarrollo_act_int/main.dart';
import 'package:desarrollo_act_int/screens/detail_screen.dart';

void main() {
  testWidgets('Abre el servicio seleccionado y regresa al catalogo', (
    WidgetTester tester,
  ) async {
    // Iniciar la aplicación.
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    // Comprobar que aparece el catálogo.
    expect(find.text('Nuestros servicios'), findsOneWidget);
    expect(find.text('Facturación electrónica'), findsOneWidget);

    // Buscar y pulsar el botón del primer servicio.
    final botonDetalle =
        find.widgetWithText(ElevatedButton, 'Ver detalle').first;

    await tester.ensureVisible(botonDetalle);
    await tester.pumpAndSettle();
    await tester.tap(botonDetalle);
    await tester.pumpAndSettle();

    // Comprobar que se abrió la segunda pantalla.
    expect(find.byType(DetailScreen), findsOneWidget);

    // Revisar los parámetros que recibió.
    final detalle = tester.widget<DetailScreen>(find.byType(DetailScreen));

    expect(detalle.nombreServicio, 'Facturación electrónica');

    expect(detalle.descripcion, contains('emitir comprobantes'));

    // Comprobar que ambos datos se muestran.
    expect(find.text(detalle.nombreServicio), findsOneWidget);

    expect(find.text(detalle.descripcion), findsOneWidget);

    // Pulsar el botón de regreso.
    final botonVolver = find.widgetWithText(
      ElevatedButton,
      'Volver al catálogo',
    );

    await tester.ensureVisible(botonVolver);
    await tester.pumpAndSettle();
    await tester.tap(botonVolver);
    await tester.pumpAndSettle();

    // Verificar que volvimos al catálogo.
    expect(find.text('Nuestros servicios'), findsOneWidget);
    expect(find.byType(DetailScreen), findsNothing);
  });
}
