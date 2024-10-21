import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Para abrir el enlace de GitHub

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // Función para abrir la URL de GitHub
  Future<void> _launchGitHub() async {
    final Uri url =
        Uri.parse('https://github.com/Jonathan2310/ChatBot.git');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw 'No se pudo abrir el enlace $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    const Color accentGreen = Color.fromARGB(255, 72, 77, 175);
    const Color darkBackground = Color.fromARGB(255, 246, 246, 246);

    return Scaffold(
      backgroundColor: darkBackground,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo
              Image.asset(
                'asset/img/uplogo.jpg',
                width: 100,
                height: 100,
              ),
              const SizedBox(height: 20),
              // Nombre
              const Text(
                'Jonathan Jair Perez Mejia',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              // Información adicional
              const Text(
                'Carrera: Software',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'Materia: Programación para Móviles',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                '9°A',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 16,
                ),
              ),
              const Text(
                '221215',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 30),
              // Botón para ir al Chatbot
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/chatbot');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: accentGreen,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: const Text(
                  'Iniciar ChatBot',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Enlace a GitHub
              GestureDetector(
                onTap: _launchGitHub,
                child: const Text(
                  'Ver repositorio en GitHub',
                  style: TextStyle(
                    color: Color.fromARGB(255, 1, 1, 1),
                    decoration: TextDecoration.underline,
                    fontSize: 18,
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
