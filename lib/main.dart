import 'package:flutter/material.dart';
import 'home.page.dart'; // Importa la página de inicio
import 'chat.page.dart'; // Importa la página del chatbot

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ChatBot-Moviles 2',
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 235, 235, 235),
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 0, 0, 0),
          primary: const Color.fromARGB(255, 50, 101, 160),
          secondary: const Color.fromARGB(255, 179, 67, 47),
        ),
        useMaterial3: true,
      ),
      initialRoute: '/', // Ruta inicial a la página de inicio
      routes: {
        '/': (context) => const HomePage(), // Página de inicio
        '/chatbot': (context) => const ChatPage(), // Página del chatbot
      },
    );
  }
}
