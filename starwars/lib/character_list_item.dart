import 'package:flutter/material.dart';
import 'character_details_screen.dart';

// Karakter listesindeki her bir öğe için kullanılan widget.
class CharacterListItem extends StatelessWidget {
  final String characterName; // Karakterin ismi.
  final String characterDescription; // Karakterin açıklaması.
  final VoidCallback onTap; // Tıklama işlemi.

  // Constructor, karakterin ismi, açıklaması ve tıklama işlemi alır.
  CharacterListItem(this.characterName, this.characterDescription, this.onTap);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(characterName), // Liste öğesinin başlığı karakter ismidir.
      onTap: onTap, // Liste öğesine tıklandığında belirtilen işlemi gerçekleştirir.
    );
  }
}
