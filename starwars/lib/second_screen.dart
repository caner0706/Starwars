import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'character_details_screen.dart';
import 'character_drawer.dart';
import 'dart:async';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {

  // Dönen metinler listesi
  List<String> rotatingTexts = [
    'May the Force be with you.',
    'It\'s a trap!',
    'I am your father.',
    'The Force will be with you, always.',
    'Do or do not, there is no try.',
    'I have a bad feeling about this.',
    'The Force will be with you, always.',
    'In my experience, there\'s no such thing as luck.',
    'I find your lack of faith disturbing.',
    'It’s the ship that made the Kessel Run in less than twelve parsecs.',
    'I’ve got a bad feeling about this.',
    'Chewie, we’re home.',
    'The garbage will do.',
    'I love you. I know.',
    'You were the chosen one!',
    'The dark side of the Force is a pathway to many abilities some consider to be unnatural.',
    'I am the Senate.',
    'It’s a system we cannot afford to lose.',
    'I don’t like sand. It’s coarse and rough and irritating and it gets everywhere.',
    'It’s treason, then.',
    'Hello there!',
  ];

  // Başlangıçta gösterilen metnin indeksi
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();

    // Belirli bir süre sonra otomatik olarak dönen metni değiştir
    Timer.periodic(Duration(seconds: 3), (timer) {
      setState(() {
        currentIndex = (currentIndex + 1) % rotatingTexts.length;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black, // Arka plan rengini siyah yap
      appBar: AppBar(
        title: AnimatedTextKit(
          animatedTexts: [
            TypewriterAnimatedText(
              'STAR WARS',
              textStyle: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              speed: Duration(milliseconds: 100),
            ),
          ],
          isRepeatingAnimation: false,
          onTap: () {},
        ),
        backgroundColor: Colors.transparent, // App Bar'ın arka plan rengini transparent yap
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              constraints: BoxConstraints(maxWidth: 300),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.7),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text(
                rotatingTexts[currentIndex],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade900,
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: CharacterDrawer(), // Drawer ekleniyor
    );
  }
}

class RotatingText extends StatefulWidget {
  final List<String> texts;

  RotatingText(this.texts);

  @override
  _RotatingTextState createState() => _RotatingTextState();
}

class _RotatingTextState extends State<RotatingText> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: Duration(seconds: 1),
      child: Container(
        width: 200.0,
        height: 40.0,
        color: Colors.black.withOpacity(0.7),
        alignment: Alignment.center,
        child: Text(
          widget.texts[currentIndex],
          key: ValueKey<int>(currentIndex),
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    Timer.periodic(Duration(seconds: 3), (timer) {
      setState(() {
        // Belirli bir süre sonra otomatik olarak dönen metni değiştir
        currentIndex = (currentIndex + 1) % widget.texts.length;
      });
    });
  }
}
