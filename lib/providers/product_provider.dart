import 'package:flutter/material.dart';
import '../models/product_model.dart';

class ProductProvider with ChangeNotifier {
  List<Product> _products = [
    Product(
      id: '1',
      name: 'Black Oversized T-Shirt',
      imageUrl: 'assets/clothes/black_tee.jpg',
      price: 499.0,
      category: 'Tops',
    ),
    Product(
      id: '2',
      name: 'Slim Fit Jeans',
      imageUrl: 'assets/clothes/jeans.jpg',
      price: 899.0,
      category: 'Bottoms',
    ),
    // Add more...
  ];

  List<Product> get products => _products;
}
