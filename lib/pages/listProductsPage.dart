// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ListProductsPage extends StatelessWidget {
  const ListProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista de Produtos"),
      ),
      //body: ListView.builder(itemCount: productStore., itemBuilder: (context , int index) {}),
    );
  }
}
