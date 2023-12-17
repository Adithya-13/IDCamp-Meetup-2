import 'package:flutter/material.dart';

class FittedBoxScreen extends StatelessWidget {
  const FittedBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.red,
          ),
          height: 200,
          width: 200,
          child: const Center(
            child: FittedBox(
              child: Text(
                'Hello World',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
