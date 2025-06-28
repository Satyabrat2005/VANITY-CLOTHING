import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const VanityApp());
}

class VanityApp extends StatelessWidget {
  const VanityApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vanity',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true).copyWith(
        scaffoldBackgroundColor: Colors.black,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.grey),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
