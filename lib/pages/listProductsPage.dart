import 'package:flutter/material.dart';
import 'package:project_firebase/store/productStore.dart';

class ListProductsPage extends StatelessWidget {
  const ListProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final productStore = ProductStore();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista de Produtos"),
      ),
      //body: ListView.builder(itemCount: productStore., itemBuilder: (context , int index) {}),
    );
  }
}
