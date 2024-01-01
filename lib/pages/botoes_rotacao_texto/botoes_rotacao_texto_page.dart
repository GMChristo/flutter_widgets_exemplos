import 'package:flutter/material.dart';

class BotoesRotacaoTextoPage extends StatelessWidget {
  const BotoesRotacaoTextoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botões e Rotação de Texto'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                RotatedBox(
                  quarterTurns: -1,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.red,
                    child: const Text("Gabriel Christo"),
                  ),
                ),
                const Icon(Icons.ac_unit),
              ],
            ),
            TextButton(
              onPressed: () {
                print('TextButton');
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.red,
                backgroundColor: Colors.amberAccent,
                minimumSize: const Size(150, 50),
              ),
              child: const Text('Salvar'),
            ),
            IconButton(
              onPressed: () {
                print('IconButton');
              },
              icon: const Icon(Icons.exit_to_app),
            ),
            ElevatedButton(
              onPressed: () {
                print('ElevatedButton');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amberAccent,
                shadowColor: Colors.amber[800],
              ),
              child: const Text('Salvar'),
            ),
            const SizedBox(
              //utilizado para criar um espaço entre os elementos
              height: 10,
            ),
            ElevatedButton.icon(
              onPressed: () {
                print('ElevatedButton.icon');
              },
              icon: const Icon(Icons.airplane_ticket),
              label: const Text('Modo Avião'),
            ),
            ElevatedButton(
              onPressed: () {
                print('ElevatedButton');
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith(
                  (states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.black;
                    } else if (states.contains(MaterialState.hovered)) {
                      return Colors.red;
                    }
                    return Colors.blue[100];
                  },
                ),
              ),
              child: const Text('Salvar'),
            ),
            InkWell(
              onTap: () {},
              child: const Text('InkWeel'),
            ),
            GestureDetector(
              child: const Text('Gesture detector'),
              onTap: () => print('Gesture Clicado'),
              onVerticalDragStart: (_) => print('Start $_'),
            ),
            Container(
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Colors.blue,
                    Colors.green,
                  ],
                ),
                borderRadius: BorderRadius.circular(50),
                boxShadow: const [
                  BoxShadow(blurRadius: 10, offset: Offset(2, 5), color: Colors.grey),
                ],
              ),
              child: InkWell(
                onTap: () {
                  print('Botão personalisado');
                },
                borderRadius: BorderRadius.circular(50),
                child: const Center(
                  child: Text(
                    'Botão Salvar',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
