import 'package:flutter/material.dart';

void main() {
  runApp(const JardinMaravillasApp());
}

class JardinMaravillasApp extends StatelessWidget {
  const JardinMaravillasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white, // Fondo blanco como pediste
      ),
      home: const PantallaPrincipal(),
    );
  }
}

class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    // Definición de colores personalizados
    const Color moradoClaro = Color(0xFFE1BEE7); // Lavender/Purple 100
    const Color moradoOscuro = Color(0xFF4A148C); // Purple 900
    const Color moradoBorde = Color(0xFF9C27B0); // Purple 500

    return Scaffold(
      // Barra superior (Custom Header)
      appBar: AppBar(
        backgroundColor: moradoClaro,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Jardín de las Maravillas',
          style: TextStyle(
            color: moradoOscuro,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              // Texto de bienvenida
              const Text(
                'Donde la diversión cobra vida',
                style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: moradoOscuro,
                ),
              ),
              const SizedBox(height: 25),

              // Primera Fila (Recuadro con texto)
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(color: moradoBorde, width: 2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Text(
                  'Vive momentos inolvidables en un parque lleno de adrenalina, magia y experiencias',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: moradoOscuro, fontSize: 16),
                ),
              ),

              const SizedBox(height: 20),

              // Segunda Fila (Recuadro con texto e imagen debajo)
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(color: moradoBorde, width: 2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    const Text(
                      'Acércate a ver nuestras atracciones',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: moradoOscuro, 
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                    const SizedBox(height: 15),
                    // Imagen desde la red
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://raw.githubusercontent.com/SusiHinojos/imagenes_paraflutter_6J_Febrero_2026/refs/heads/main/atraccion.jpeg',
                        height: 150,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // AppBar Inferior (BottomNavigationBar)
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: moradoOscuro,
        unselectedItemColor: moradoBorde,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Usuario'),
          BottomNavigationBarItem(icon: Icon(Icons.fort), label: 'Atracción'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(icon: Icon(Icons.confirmation_number), label: 'Boleto'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Carrito'),
        ],
      ),
    );
  }
}