import 'package:flutter/material.dart';

// Widget docs: https://api.flutter.dev/flutter/material/ExpansionTile-class.html

void main() => runApp(const FaqApp());

class FaqApp extends StatelessWidget {
  const FaqApp({super.key});

  @override
  Widget build(BuildContext context) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FaqScreen(),
      );
}

class FaqScreen extends StatelessWidget {
  const FaqScreen({super.key});

  // Color palette
  static const _accent = Color(0xFFD84315); // header, title, icon

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _accent,
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(28, 24, 28, 28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Help center',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    'Tap a question to see the answer.',
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
                ),
                child: ListView(
                  padding: const EdgeInsets.fromLTRB(20, 28, 20, 20),
                  children: const [],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}