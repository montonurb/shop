import 'package:flutter/material.dart';
import 'package:project_firebase/model/product.dart';
import 'package:project_firebase/store/productStore.dart';

class AddProductPage extends StatefulWidget {
  const AddProductPage({super.key});

  @override
  State<AddProductPage> createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  TextEditingController name = TextEditingController();
  TextEditingController description = TextEditingController();
  TextEditingController price = TextEditingController();
  TextEditingController imageUrl = TextEditingController();

  final productStore = ProductStore();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Produto",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.purple,
      ),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView(
                children: [
                  TextFormField(
                    controller: name,
                    decoration: const InputDecoration(
                      labelText: "Nome",
                    ),
                    keyboardType: TextInputType.text,
                  ),
                  TextFormField(
                    controller: description,
                    decoration: const InputDecoration(
                      labelText: "Descrição",
                    ),
                    keyboardType: TextInputType.text,
                  ),
                  TextFormField(
                    controller: price,
                    decoration: const InputDecoration(
                      labelText: "Valor",
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  TextFormField(
                    controller: imageUrl,
                    decoration: const InputDecoration(
                      labelText: "URL Imagem",
                    ),
                    keyboardType: TextInputType.text,
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      setState(() => isLoading = true);
                      productStore
                          .addProduct(
                        name.text,
                        description.text,
                        price.text,
                        imageUrl.text,
                      )
                          .catchError((error) {
                        return showDialog(
                            context: context,
                            builder: (ctx) => AlertDialog(
                                  title: const Text("Ocorreu um erro!"),
                                  content: Text(error.toString()),
                                ));
                      }).then(
                        (value) {
                          setState(() => isLoading = false);
                          return showDialog<void>(
                            context: context,
                            builder: (ctx) => const AlertDialog(
                              title: Text("Cadastrado!"),
                            ),
                          );
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                    ),
                    child: const Text(
                      'Cadastrar',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
