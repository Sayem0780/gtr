import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:gtr/model/ProductList.dart';
import 'package:http/http.dart' as http;

class Product {
  final int id;
  final String name;
  final String code;
  final double price;

  Product({
    required this.id,
    required this.name,
    required this.code,
    required this.price,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['Id'],
      name: json['Name'],
      code: json['Code'],
      price: json['Price'].toDouble(),
    );
  }
}



class Markeet extends ChangeNotifier{

  List<Product> _productList = [];
  List<Product> get product {
    return [..._productList];
  }

  Future<List<Product>> fetchProducts() async {
    final accessToken = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVc2VySWQiOiI3OCIsIkN1cnJlbnRDb21JZCI6IjEiLCJuYmYiOjE2ODE1Mzc0OTQsImV4cCI6MTY4MjE0MjI5NCwiaWF0IjoxNjgxNTM3NDk0fQ.cGrvpfUQg-qlQI5TSNtLQ79tm9eKfkwH3l_zhEPFLAc';
    final response = await http.get(Uri.parse('https://pqstec.com/invoiceapps/Values/GetProductList'),
        headers: {'Authorization': 'Bearer $accessToken'});

    if (response.statusCode == 200) {
      final jsonBody = json.decode(response.body);
      final productListJson = jsonBody['ProductList'] as List<dynamic>;
      final productList = productListJson.map((json) => Product.fromJson(json)).toList();

      _productList = productList; // assign the fetched products to _productList
      notifyListeners();

      return productList;
    } else {
      throw Exception('Failed to fetch products');
    }
  }


  List<ProductList> _items = [];
  List<ProductList> get item {
    return [..._items];
  }

  Future<void> getApi() async {
    final accessToken = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVc2VySWQiOiI3OCIsIkN1cnJlbnRDb21JZCI6IjEiLCJuYmYiOjE2ODE1Mzc0OTQsImV4cCI6MTY4MjE0MjI5NCwiaWF0IjoxNjgxNTM3NDk0fQ.cGrvpfUQg-qlQI5TSNtLQ79tm9eKfkwH3l_zhEPFLAc';
    final response = await http.get(Uri.parse('https://pqstec.com/invoiceapps/Values/GetProductList'),
        headers: {'Authorization': 'Bearer $accessToken'});
    if (response.statusCode == 200) {
      final dynamic data = jsonDecode(response.body);
      if (data is List) {
        _items.clear();
        for (final Map<String, dynamic> item in data) {
          final ProductList productList = ProductList.fromJson(item);
          _items.add(productList);
        }
        print(_items.length);
        notifyListeners();
      } else {
        throw Exception('Unexpected response format');
      }
    } else {
      throw Exception('Failed to load products');
    }
    print(_items.length);
  }

}

