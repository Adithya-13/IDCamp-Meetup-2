import 'package:flutter/material.dart';

class LayoutBuilderScreen extends StatelessWidget {
  const LayoutBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: LayoutBuilder(
                builder: (context, constraint) {
                  if (constraint.maxWidth <= 125) {
                    return const Text('Ini widget 1');
                  }
                  return Container(
                    decoration: const BoxDecoration(
                      color: Colors.red,
                    ),
                    height: 200,
                    width: 200,
                    child: Center(
                      child: FittedBox(
                        child: Text(
                          'Width: ${constraint.maxWidth}',
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              flex: 2,
              child: LayoutBuilder(
                builder: (context, constraint) {
                  return Container(
                    decoration: const BoxDecoration(
                      color: Colors.green,
                    ),
                    height: 200,
                    width: 200,
                    child: Center(
                      child: FittedBox(
                        child: Text(
                          'Width: ${constraint.maxWidth}',
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
