import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  const MediaQueryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    print('Largura: ${mediaQuery.size.width}');
    print('Altura: ${mediaQuery.size.height}');
    print('Padding TOP: ${mediaQuery.padding.top}'); // StatusBar, onde fica as notificações do celular
    print('Tamanho AppBarDefault: $kToolbarHeight'); //caso nao tenha alterado o tamanho da AppBar

    var appBar = AppBar(
      title: const Text('MediaQuery'),
    );
    print('Tamanho AppBar: ${appBar.preferredSize.height}'); //caso tenha alterado o tamanho da AppBar

    final heightBody = mediaQuery.size.height - mediaQuery.padding.top - kToolbarHeight;

    return Scaffold(
      appBar: appBar,
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.red,
            width: mediaQuery.size.width * .50,
            height: heightBody * .5,
          ),
          Container(
            color: Colors.blue,
            width: mediaQuery.size.width,
            height: heightBody * .5,
          ),
        ],
      )),
    );
  }
}
