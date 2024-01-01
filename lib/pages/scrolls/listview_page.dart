import 'package:flutter/material.dart';

class ListviewPage extends StatelessWidget {
  const ListviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View'),
      ),
      // body: ListView.builder( //funciona como o separated, porem sem a linha de divisao entre os itens
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return const Divider(
            color: Colors.red,
            thickness: 10,
          );
        },
        itemCount: 100,
        itemBuilder: (context, index) {
          print('Carregando o indice $index');
          return ListTile(
            title: Text('Indice $index'),
            subtitle: const Text('Flutter é TOP'),
            leading: const CircleAvatar(
              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyW3gRG_jeFRLdqTcmANi37bwQplrvZyFNjg&usqp=CAU'),
            ),
          );
        },
      ),
    );
  }
}
