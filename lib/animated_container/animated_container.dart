import 'package:flutter/material.dart';

class AnimatedContainerScreen extends StatefulWidget {
  const AnimatedContainerScreen({super.key});

  @override
  State<AnimatedContainerScreen> createState() =>
      _AnimatedContainerScreenState();
}

class _AnimatedContainerScreenState extends State<AnimatedContainerScreen> {
  double height = 100;
  double width = 100;

  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 300),
          opacity: isVisible ? 1 : 0,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            decoration: const BoxDecoration(
              color: Colors.red,
            ),
            height: height,
            width: width,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            height += 50;
            width += 50;
            isVisible = !isVisible;
          });
        },
      ),
    );
  }
}
