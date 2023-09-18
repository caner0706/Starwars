import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'second_screen.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  bool alreadyPushed = false; // Sayfa geçişini kontrol etmek için bir bayrak.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Arka plan rengini siyah yap

      // App Bar'ı kapatıldığı için bu kısmı yorum satırına aldık.
      /*appBar: AppBar(
        title: AnimatedTextKit(
          animatedTexts: [
            TypewriterAnimatedText(
              'STAR WARS',
              textStyle: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              speed: Duration(milliseconds: 200),
            ),
          ],
          isRepeatingAnimation: false,
          onTap: () {},
        ),
        backgroundColor: Colors.transparent, // App Bar'ın arka plan rengini transparent yap
      ),*/


      body: Center(
        child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 1.0, end: 0.0),
          duration: Duration(seconds: 3),
          builder: (BuildContext context, double value, Widget? child) {
            if (value == 0.0 && !alreadyPushed) {
              alreadyPushed = true;
              Future.delayed(const Duration(seconds: 1), () {
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        SecondScreen(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      const begin = Offset(1.0, 0.0);
                      const end = Offset.zero;
                      const curve = Curves.easeInOut;
                      var tween = Tween(begin: begin, end: end)
                          .chain(CurveTween(curve: curve));
                      var offsetAnimation = animation.drive(tween);

                      return SlideTransition(
                        position: offsetAnimation,
                        child: child,
                      );
                    },
                  ),
                );
              });
            }
            return Opacity(
              opacity: value,
              child: Image.asset(
                'assets/images/starwars.png', // Resmi assets klasöründen al
                width: 300, // Resmin genişliği
                height: 350, // Resmin yüksekliği
                fit: BoxFit.cover, // Resmin boyutunu ayarla
              ),
            );
          },
        ),
      ),
    );
  }
}
