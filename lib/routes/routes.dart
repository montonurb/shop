import 'package:flutter/material.dart';
import 'package:project_firebase/pages/addProductPage.dart';
import 'package:project_firebase/pages/homepage.dart';
import 'package:project_firebase/pages/listProductsPage.dart';

final routes = <String, WidgetBuilder>{
  "/": (context) => const HomePage(),
  "/addProduct": (context) => const AddProductPage(),
  "/listProduct": (context) => const ListProductsPage(),
};
