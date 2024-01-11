import 'package:flutter/material.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final cor = Colors.red;
    // final cor = Colors.red.withOpacity(0.5);
    // final cor = Color.fromRGBO(0, 0, 255, 1);
    final cor = Color(0XFF17599D); //para usar o hexadecimal deve passar 0XFF + o valor hexadecimal da cor
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cores'),
      ),
      body: Center(
        child: Container(
          width: 400,
          height: 400,
          color: cor,
        ),
      ),
    );
  }
}
