import 'package:flutter/material.dart';

class GradientScaffold extends StatelessWidget {
  final Widget body;
  final Widget? floatingActionButton;

  const GradientScaffold({
    super.key,
    required this.body,
    this.floatingActionButton,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.0, 0.6, 1.0],
          colors: [Color(0xff0F0F1A), Color(0xff0A0A0F), Color(0xff0D0A1A)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        floatingActionButton: floatingActionButton,
        body: SafeArea(child: body),
      ),
    );
  }
}
