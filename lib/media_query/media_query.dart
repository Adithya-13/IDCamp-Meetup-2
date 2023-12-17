import 'package:flutter/material.dart';
import 'package:idcamp_responsive/media_query/x_build_context.dart';

class MediaQueryPage extends StatelessWidget {
  const MediaQueryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = context.mediaQuery.size.height;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: height,
            ),
          ],
        ),
      ),
    );
  }
}
