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
        // Future providers: CartProvider, UserProvider, TryOnProvider etc.
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
            titleTextStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
              color: Colors.white,
            ),
          ),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: Colors.black,
            selectedItemColor: Color.fromARGB(255, 73, 26, 125),
            unselectedItemColor: Color.fromARGB(137, 249, 247, 247),
          ),
        ),
        home: const HomeScreen(),
        // routes: {'/cart': (ctx) => const CartScreen()}, // future routing
      ),
    );
  }
}
