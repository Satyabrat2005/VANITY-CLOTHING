import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/home_screen.dart';
import 'providers/product_provider.dart';

void main() {
  runApp(const VanityApp());
}

class VanityApp extends StatelessWidget {
  const VanityApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProductProvider()),
        // Add more providers here like CartProvider, UserProvider etc.
      ],
      child: MaterialApp(
        title: 'Vanity',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(useMaterial3: true).copyWith(
          scaffoldBackgroundColor: Colors.black,
          textTheme: const TextTheme(
            bodyLarge: TextStyle(color: Colors.white),
            bodyMedium: TextStyle(color: Colors.grey),
          ),
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.black,
            elevation: 0,
            centerTitle: true,
          ),
        ),
        home: const HomeScreen(),
        // You can add named routes here later
      ),
    );
  }
}
