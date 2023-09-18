import 'package:flutter/material.dart';

class CharacterDetailsScreen extends StatelessWidget {
  final String characterName;
  final Map<String, String> characterProperties;

  // Constructor, karakter adı ve özellikleri alır
  CharacterDetailsScreen({required this.characterName, required this.characterProperties});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          characterName,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 200.0,
              child: Image.asset(
                'assets/images/$characterName.png', // Resmin dosya yolu (örneğin Luke Skywalker için "luke_skywalker.png")
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16.0),
            Column(
              children: characterProperties.entries.map((entry) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: SizedBox(
                    width: 300.0,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red.shade900, // Koyu kırmızı
                        onPrimary: Colors.white, // Yazı rengi
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      child: Text(
                        '${entry.key}: ${entry.value}',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
