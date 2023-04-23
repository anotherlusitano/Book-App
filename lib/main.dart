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
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.deepOrange,
        ),
        textTheme: GoogleFonts.emilysCandyTextTheme(),
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
      appBar: AppBar(
        title: const Text('Spooky Book App'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.refresh),
            label: 'a',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: 'b',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline),
            label: 'c',
          ),
        ],
      ),
      body: Container(
        decoration: backgroundGradient(),
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
