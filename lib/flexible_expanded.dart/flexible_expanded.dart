// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class FlexibleAndExpandedScreen extends StatelessWidget {
  const FlexibleAndExpandedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Row(
          children: [
            Flexible(
              child: NormalWidget(
                color: Colors.red,
                width: 1000,
              ),
            ),
            Expanded(
              child: NormalWidget(
                color: Colors.green,
                width: 1000,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NormalWidget extends StatelessWidget {
  final Color color;
  final double width;
  const NormalWidget({
    Key? key,
    required this.color,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
      ),
      height: 200,
      width: width,
      child: const Center(
        child: Text(
          'Hello World',
        ),
      ),
    );
  }
}
