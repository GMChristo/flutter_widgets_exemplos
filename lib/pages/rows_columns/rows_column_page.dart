import 'package:flutter/material.dart';

class RowsColumnPage extends StatelessWidget {
  const RowsColumnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rows & Columns'),
      ),
      body: Container(
        child: const Column(
          children: [
            Text('Elemento 1'),
            Text('Elemento 2'),
          ],
        ),
      ),
    );
  }
}
