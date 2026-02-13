import 'package:flutter/material.dart';

void main() {
  runApp(const JoyeriaGarciaApp());
}

class JoyeriaGarciaApp extends StatelessWidget {
  const JoyeriaGarciaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const PantallaInicio(),
    );
  }
}

class PantallaInicio extends StatelessWidget {
  const PantallaInicio({super.key});

  @override
  Widget build(BuildContext context) {
    // AppBar en Negro absoluto
    const Color colorAppBar = Color.fromARGB(255, 0, 0, 0);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Joyería Garcia",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: colorAppBar,
        actions: [
          IconButton(
            icon: const Icon(Icons.ring_volume, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.diamond, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // FILA 1
            Expanded(
              child: Row(
                children: [
                  crearCaja("Anillos", Icons.trip_origin),
                  const SizedBox(width: 16),
                  crearCaja("Collares", Icons.auto_fix_high),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // FILA 2
            Expanded(
              child: Row(
                children: [
                  crearCaja("Relojes", Icons.watch),
                  const SizedBox(width: 16),
                  crearCaja("Pulseras", Icons.brightness_7),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // FILA 3
            Expanded(
              child: Row(
                children: [
                  crearCaja("Aretes", Icons.blur_on),
                  const SizedBox(width: 16),
                  crearCaja("Ofertas", Icons.sell),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Función actualizada para incluir ICONOS
  Widget crearCaja(String texto, IconData icono) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 92, 0, 0), // Color Guinda
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 128, 0, 0).withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 4,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centra verticalmente
          children: [
            Icon(
              icono, 
              color: Colors.white, 
              size: 40, // Tamaño del icono
            ),
            const SizedBox(height: 8), // Espacio entre icono y texto
            Text(
              texto,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                letterSpacing: 1.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}