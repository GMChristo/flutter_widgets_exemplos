import 'package:flutter/material.dart';

class StackPage2 extends StatelessWidget {
  const StackPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack2'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://a.cdn-hotels.com/gdcs/production49/d1210/1fb62470-ac69-494f-9d2c-7f80306e8ba9.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Colors.white54,
          ),
          Positioned(
            bottom: 48,
            left: 10,
            right: 10,
            child: Card(
              elevation: 12,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'New York',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                        'A \"cidade que nunca dorme\", a \"capital do mundo\" ou a \"Big Appe\" são algumas nomenclaturas para Noba York. Localizada em um grande porto natural na costa atlântica do Nordeste dos Estados Unidos, a cidade é composta por cinco distritos: Bronx, Brooklyn, Manhattan, Queens e Staten Island'),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
