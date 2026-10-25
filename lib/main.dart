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
  static const _outline = Color(0xFFFFCC80); // customized card border
  static const _neutralBorder = Color(0xFFE3D9D1); // default card border

  static final _cardShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(16),
    side: const BorderSide(color: _outline),
  );

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
                  children: [
                    const _SectionLabel('Default ExpansionTile'),

                    // Baseline: no ExpansionTile properties set.
                    // The Container only frames it so it looks tidy.
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: _neutralBorder),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const ExpansionTile(
                        title: Text('How do I reset my password?'),
                        children: [
                          ListTile(
                            title: Text(
                                'Go to Settings > Account > Reset password.'),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 24),
                    const _SectionLabel('Customized ExpansionTile'),

                    ExpansionTile(
                      // Property 1: open on load
                      initiallyExpanded: true,
                      // Supporting setup: rounded card look
                      shape: _cardShape,
                      collapsedShape: _cardShape,
                      clipBehavior: Clip.antiAlias,
                      title: const Text(
                        'How do I contact support?',
                        style: TextStyle(
                          color: _accent,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      children: const [
                        ListTile(
                          title: Text(
                              'Email support@gmail.com or use in-app chat.'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SectionLabel extends StatelessWidget {
  const _SectionLabel(this.text);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4, bottom: 8),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w600,
          color: Color(0xFF7A6A5F),
        ),
      ),
    );
  }
}