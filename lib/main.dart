import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'core/constants.dart';
import 'splash/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Requiere configuración previa
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NDO Noticias',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.primary,
        fontFamily: 'Roboto', // Cambia si usas otra fuente
      ),
      home: const SplashScreen(),
    );
  }
}
