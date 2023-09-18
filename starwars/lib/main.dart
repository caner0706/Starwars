import 'package:flutter/material.dart';
import 'first_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Debug yazısını kaldır

      // Uygulama başlığı
      title: 'Star Wars Uygulaması',

      // Tema ayarları
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      // Uygulamanın ana ekranı
      home: FirstScreen(),
    );
  }
}
