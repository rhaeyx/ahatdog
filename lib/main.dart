import 'package:cs3midlogin/home_screen.dart';
import 'package:cs3midlogin/sign_in_screen.dart';
import 'package:cs3midlogin/sign_up_screen.dart';
import 'package:cs3midlogin/product_card.dart';
import 'package:flutter/material.dart';

import 'package:dio/dio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        '/': (context) => const HomeScreen(),
        '/signin': (context) => const SignInScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/products': (context) => const ProductsScreen(),
      },
    );
  }
}

class Product {
  final String title;
  final String description;
  final num price;
  final String imageUrl;
  final num rating;
  final num ratingCount;
  final String category;

  Product(
      {required this.title,
      required this.description,
      required this.price,
      required this.imageUrl,
      required this.rating,
      required this.ratingCount,
      required this.category});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        title: json['title'],
        description: json['description'],
        price: json['price'],
        imageUrl: json['image'],
        rating: json['rating']['rate'],
        ratingCount: json['rating']['count'],
        category: json['category']);
  }
}

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  List<Product> _products = [];

  @override
  void initState() {
    super.initState();
    _fetchProducts();
  }

  Future<void> _fetchProducts() async {
    String url = 'https://fakestoreapi.com/products';
    // url = 'http://localhost:4000/products';
    try {
      var dio = Dio();
      Response response = await dio.get(url); // Replace with your API endpoint

      if (response.statusCode == 200) {
        List data = response.data; // Assuming the data is a list of products
        setState(() {
          _products = data.map((json) => Product.fromJson(json)).toList();
        });
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 246, 250, 1),
      body: _products.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : CardGrid(_products),
      resizeToAvoidBottomInset: false, // set it to false
    );
  }
}

class CardGrid extends StatelessWidget {
  final List products;

  const CardGrid(this.products);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];

          return ProductCard(
              imageUrl: product.imageUrl,
              title: product.title,
              description: product.description,
              price: product.price,
              rating: product.rating,
              ratingCount: product.ratingCount,
              category: product.category,
              buttonColor: Colors.yellowAccent);
        });
  }
}
