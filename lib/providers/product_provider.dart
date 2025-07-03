import 'package:flutter/material.dart';
import '../models/product_model.dart';

class ProductProvider with ChangeNotifier {
  final List<Product> _products = [
    Product(
      id: '1',
      name: 'Black Oversized Tee',
      imageUrl: 'assets/clothes/black_tee.png',
      price: 499.0,
      category: 'Men',
    ),
    Product(
      id: '2',
      name: 'White Crop Top',
      imageUrl: 'assets/clothes/white_croptop.png',
      price: 399.0,
      category: 'Women',
    ),
    Product(
      id: '3',
      name: 'AI Try-On Hoodie',
      imageUrl: 'assets/clothes/ai_tryon_hoodie.png',
      price: 799.0,
      category: 'Try-On',
    ),
  ];

  List<Product> get products => _products;

  List<Product> getByCategory(String category) =>
      _products.where((p) => p.category == category).toList();
}
