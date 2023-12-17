import 'package:flutter/material.dart';

class FractionallySizedBoxScreen extends StatelessWidget {
  const FractionallySizedBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [
            FractionallyWidget(),
            FractionallyWidget(),
          ],
        ),
      ),
    );
  }
}

class FractionallyWidget extends StatelessWidget {
  const FractionallyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.2,
      child: FittedBox(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.red,
          ),
          height: 200,
          width: 200,
          child: const Center(
            child: Text(
              'Hello World',
            ),
          ),
        ),
      ),
    );
  }
}
