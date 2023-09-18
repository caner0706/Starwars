import 'package:flutter/material.dart';
import 'character_details_screen.dart';

// Drawer menüsü için kullanılan widget
class CharacterDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        children: <Widget>[
          // Drawer başlığı
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Center(
              child: Text(
                'STAR WARS',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellowAccent,
                ),
              ),
            ),
          ),

          // Karakterlerin listesi
          CharacterListItem(
            characterName: 'Luke Skywalker',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CharacterDetailsScreen(
                    characterName: 'Luke Skywalker',
                    characterProperties: {
                      "Height": "172",
                      "Mass": "77",
                      "Hair Color": "Blond",
                      "Skin Color": "Fair",
                      "Eye Color": "Blue",
                      "Birth Year": "19BBY",
                      "Gender": "Male",
                    },
                  ),
                ),
              );
            },
          ),
          CharacterListItem(
            characterName: 'C-3PO',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CharacterDetailsScreen(
                    characterName: 'C-3PO',
                    characterProperties: {
                      "Height": "167",
                      "Mass": "75",
                      "Hair Color": "n/a",
                      "Skin Color": "Gold",
                      "Eye Color": "Yellow",
                      "Birth Year": "112BBY",
                      "Gender": "n/a",
                    },
                  ),
                ),
              );
            },
          ),
          CharacterListItem(
            characterName: 'R2-D2',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CharacterDetailsScreen(
                    characterName: 'R2-D2',
                    characterProperties: {
                      "Height": "96",
                      "Mass": "32",
                      "Hair Color": "n/a",
                      "Skin Color": "White, Blue",
                      "Eye Color": "Red",
                      "Birth Year": "33BBY",
                      "Gender": "n/a",
                    },
                  ),
                ),
              );
            },
          ),
          CharacterListItem(
            characterName: 'Darth Vader',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CharacterDetailsScreen(
                    characterName: 'Darth Vader',
                    characterProperties: {
                      "Height": "202",
                      "Mass": "136",
                      "Hair Color": "None",
                      "Skin Color": "White",
                      "Eye Color": "Yellow",
                      "Birth Year": "41.9BBY",
                      "Gender": "Male",
                    },
                  ),
                ),
              );
            },
          ),
          CharacterListItem(
            characterName: 'Leia Organa',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CharacterDetailsScreen(
                    characterName: 'Leia Organa',
                    characterProperties: {
                      "Height": "150",
                      "Mass": "49",
                      "Hair Color": "Brown",
                      "Skin Color": "Light",
                      "Eye Color": "Brown",
                      "Birth Year": "19BBY",
                      "Gender": "Female",
                    },
                  ),
                ),
              );
            },
          ),
          CharacterListItem(
            characterName: 'Owen Lars',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CharacterDetailsScreen(
                    characterName: 'Owen Lars',
                    characterProperties: {
                      "Height": "178",
                      "Mass": "120",
                      "Hair Color": "Brown, Grey",
                      "Skin Color": "Light",
                      "Eye Color": "Blue",
                      "Birth Year": "52BBY",
                      "Gender": "Male",
                    },
                  ),
                ),
              );
            },
          ),
          CharacterListItem(
            characterName: 'Beru Whitesun Lars',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CharacterDetailsScreen(
                    characterName: 'Beru Whitesun Lars',
                    characterProperties: {
                      "Height": "165",
                      "Mass": "75",
                      "Hair Color": "Brown",
                      "Skin Color": "Light",
                      "Eye Color": "Blue",
                      "Birth Year": "47BBY",
                      "Gender": "Female",
                    },
                  ),
                ),
              );
            },
          ),
          CharacterListItem(
            characterName: 'R5-D4',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CharacterDetailsScreen(
                    characterName: 'R5-D4',
                    characterProperties: {
                      "Height": "97",
                      "Mass": "32",
                      "Hair Color": "n/a",
                      "Skin Color": "White, red",
                      "Eye Color": "Red",
                      "Birth Year": "Unknown",
                      "Gender": "n/a",
                    },
                  ),
                ),
              );
            },
          ),
          CharacterListItem(
            characterName: 'Biggs Darklighter',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CharacterDetailsScreen(
                    characterName: 'Biggs Darklighter',
                    characterProperties: {
                      "Height": "183",
                      "Mass": "84",
                      "Hair Color": "Black",
                      "Skin Color": "Light",
                      "Eye Color": "Brown",
                      "Birth Year": "24BBY",
                      "Gender": "Male",
                    },
                  ),
                ),
              );
            },
          ),
          CharacterListItem(
            characterName: 'Obi-Wan Kenobi',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CharacterDetailsScreen(
                    characterName: 'Obi-Wan Kenobi',
                    characterProperties: {
                      "Height": "182",
                      "Mass": "77",
                      "Hair Color": "Auburn, White",
                      "Skin Color": "Fair",
                      "Eye Color": "Blue-Gray",
                      "Birth Year": "57BBY",
                      "Gender": "Male",
                    },
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

// Drawer'daki her bir karakter için kullanılan liste öğesi
class CharacterListItem extends StatelessWidget {
  final String characterName;
  final VoidCallback onTap;

  CharacterListItem({required this.characterName, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(characterName),
      onTap: onTap,
    );
  }
}


