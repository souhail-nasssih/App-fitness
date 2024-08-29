import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import '../screens/Login.dart'; // Assurez-vous que le chemin est correct

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    await Firebase.initializeApp();
  } catch (e) {
    print("Error initializing Firebase: $e");
    // Handle the error or show an error screen if necessary
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:
          const LoginPage(), // Assurez-vous que HomePage est correctement importé
    );
  }
}
