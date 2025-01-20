import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _likeCount = 0;

  void _incrementLike() {
    setState(() {
      _likeCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF5A9EAD),
      ),
      backgroundColor: const Color(0xFFC2C0CD),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Hi there!👋🏻',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontFamily: 'Valorant Font',
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Babam Babam!',
                style: TextStyle(
                  fontSize: 25,
                  color: Color(0xFF5A9EAD),
                  fontFamily: 'Valorant Font',
                ),
              ),
              const SizedBox(height: 30),
              Image.asset(
                'assets/profile.png',
                width: 300,
              ),
              const SizedBox(height: 10),
              Container(
                margin: const EdgeInsets.all(20),
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                decoration: BoxDecoration(
                  color: const Color(0xFF27334D),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Text(
                  'Jett',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFC2C0CB),
                    fontFamily: 'Valorant Font',
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'You liked this post $_likeCount times',
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Valorant Font',
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 30),
              ElevatedButton.icon(
                onPressed: _incrementLike,
                icon: const Icon(Icons.thumb_up, color: Colors.white),
                label: const Text(
                  'Like',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF5A9EAD),
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 30),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
