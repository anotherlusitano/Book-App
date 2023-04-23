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
        scaffoldBackgroundColor: Color.fromRGBO(61, 83, 129, 1),
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
      body: const Column(
        children: [
          //Your Titles
          Padding(
            padding: EdgeInsets.fromLTRB(0, 20.0, 0, 20.0),
            child: Center(
              child: Text(
                "Your Titles",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),

          //TODO: Your Titles Books Section
        ],
      ),
    );
  }
}
