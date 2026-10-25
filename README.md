# Kisis Servicios

Aplicación desarrollada en Flutter para la Actividad Integradora 1
de la asignatura Desarrollo de Aplicaciones Móviles.

Presenta un catálogo de servicios tecnológicos y permite consultar
la información de cada servicio mediante navegación entre pantallas.

## Autor

Rony Israel Cando Jacome.

## Contexto del proyecto

Tengo experiencia en el desarrollo de aplicaciones con Flutter,
incluidas aplicaciones comerciales.

Para esta actividad creé un proyecto nuevo e independiente,
con el propósito de cumplir los requisitos académicos y publicar
el código sin exponer mis sistemas comerciales ni información
de clientes.

## Funcionalidades

- Catálogo de tres servicios tecnológicos.
- Tarjetas reutilizables con nombre, descripción e icono.
- Imagen local en la cabecera del catálogo.
- Pantalla de detalle del servicio seleccionado.
- Transferencia del nombre y la descripción entre pantallas.
- Navegación de regreso al catálogo.

## Servicios disponibles

- Facturación electrónica.
- Desarrollo de sistemas.
- Soporte técnico.

## Estructura del proyecto

    lib/
    ├── main.dart
    ├── screens/
    │   ├── home_screen.dart
    │   └── detail_screen.dart
    └── widgets/
        └── service_card.dart

    assets/
    └── images/
        └── servicios.png

    test/
    └── widget_test.dart

## Requisitos

- Flutter y Dart compatibles con pubspec.yaml.
- Android Studio o Visual Studio Code.
- Dispositivo Android o emulador configurado.

## Ejecución

Desde la carpeta principal del proyecto, ejecutar:

    flutter pub get
    flutter run

## Verificación del proyecto

Análisis del código:

    flutter analyze

Pruebas automatizadas:

    flutter test

Verificación del entorno:

    flutter doctor -v

## Navegación y paso de parámetros

La pantalla principal utiliza Navigator.push y MaterialPageRoute
para abrir DetailScreen.

Se envían dos parámetros mediante su constructor:

- nombreServicio: nombre del servicio seleccionado.
- descripcion: información detallada del servicio.

La pantalla de detalle muestra ambos valores y permite regresar
mediante Navigator.pop.

## Alcance

Este proyecto es un prototipo académico. Los servicios se definen
directamente en el código, sin base de datos, API ni inicio de sesión.

## Recurso gráfico

Imagen Device-computer-icon.png obtenida de Wikimedia Commons,
disponible bajo licencia CC0.

https://commons.wikimedia.org/wiki/File:Device-computer-icon.png



