import 'package:flutter/material.dart';
import 'package:project_firebase/pages/homepage.dart';
import 'package:project_firebase/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: "/",
      routes: routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
