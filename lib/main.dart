import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme:
            GoogleFonts.emilysCandyTextTheme(Theme.of(context).textTheme),
        iconTheme: const IconThemeData(color: Colors.white, size: 28.0),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Book App',
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: backgroundGradient(),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: CustomBottomNav(),
            ),
            Column(
              children: [
                CustomBanner(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  //TODO: Your Titles Books Section

  BoxDecoration backgroundGradient() {
    return const BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        tileMode: TileMode.mirror,
        stops: [0.0, 0.4, 0.6, 1],
        colors: [
          Color(0xFF37474F),
          Color(0xFF455A64),
          Color(0xFF455A64),
          Color(0xFF37474F),
        ],
      ),
    );
  }
}

class CustomBottomNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Icon(Icons.refresh),
          Icon(Icons.person_outline),
          Icon(Icons.info_outline),
        ],
      ),
    );
  }
}

class CustomBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: LinePainter(),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        height: 90.0,
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 40,
            ),
            Row(
              children: <Widget>[
                const Text(
                  'Book App',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                Expanded(
                  child: Container(),
                ),
                const Icon(Icons.search),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 0.2
      ..style = PaintingStyle.stroke;

    Path path = Path();
    path.moveTo(0, size.height + 10);
    path.lineTo(size.width, size.height + 10);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
