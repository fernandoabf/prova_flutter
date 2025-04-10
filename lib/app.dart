import 'package:flutter/material.dart';
import 'package:prova_flutter/screens/home_screen.dart';
import 'package:prova_flutter/screens/login_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // Paleta baseada em blueGrey para combinar com LoginScreen e HomeScreen
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blueGrey,
          primary:
              Colors.blueGrey[800]!, // Cor principal para botões e destaques
          secondary:
              Colors.blueGrey[300]!, // Cor secundária para elementos sutis
          surface: Colors.blueGrey[50]!, // Fundo de cards e diálogos
          onPrimary: Colors.white, // Texto em elementos primários
          onSecondary: Colors.blueGrey[900]!, // Texto em elementos secundários
          onSurface: Colors.blueGrey[900]!, // Texto em superfícies
        ),
        // Estilo do AppBar
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent, // Transparente para gradientes
          elevation: 0, // Sem sombra
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        // Estilo de cartões
        cardTheme: CardTheme(
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          color: Colors.blueGrey[50], // Mesmo tom dos diálogos e BookItem
        ),
        // Estilo de botões elevados
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueGrey[800], // Cor dos botões
            foregroundColor: Colors.white, // Cor do texto/ícone
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        // Estilo de campos de texto
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.blueGrey[50], // Fundo claro
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.blueGrey[300]!),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.blueGrey[300]!),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.blueGrey[500]!, width: 2),
          ),
          labelStyle: TextStyle(color: Colors.blueGrey[700]),
          prefixIconColor: Colors.blueGrey[600],
        ),
        // Estilo de texto
        textTheme: TextTheme(
          headlineSmall: TextStyle(
            color: Colors.blueGrey[900],
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
          bodyMedium: TextStyle(color: Colors.blueGrey[700], fontSize: 16),
        ),
        // Estilo de diálogos
        dialogTheme: DialogTheme(
          backgroundColor: Colors.blueGrey[50],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 12,
        ),
      ),
      routes: {
        '/home': (context) => const HomeScreen(),
        '/login': (context) => const LoginScreen(),
      },
      initialRoute: '/login',
    );
  }
}
