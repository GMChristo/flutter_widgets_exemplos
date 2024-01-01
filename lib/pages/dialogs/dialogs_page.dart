import 'package:flutter/material.dart';
import 'package:widgets_exemplo/pages/dialogs/dialog_custom.dart';

class DialogsPage extends StatelessWidget {
  const DialogsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialogs'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () async {
                  await showDialog(
                    barrierDismissible: false, //desabilita o fechamento do dialog ao clicar fora dele
                    context: context,
                    builder: (_) {
                      return DialogCustom(context);
                    },
                  );
                },
                child: const Text('Dialog')),
            ElevatedButton(
                onPressed: () async {
                  await showDialog(
                      context: context,
                      builder: (context) {
                        return SimpleDialog(
                          title: const Text('Simple Dialog'),
                          contentPadding: const EdgeInsets.all(10),
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text('TituloX'),
                            ),
                            TextButton(
                              onPressed: () => Navigator.of(context).pop(),
                              child: const Text('Fechar Dialog'),
                            ),
                          ],
                        );
                      });
                },
                child: const Text('SimpleDialog')),
            ElevatedButton(
                onPressed: () async {
                  await showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Alert Dialog'),
                        content: const SingleChildScrollView(
                          child: ListBody(children: [
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text('DEseja realmente salvar??'),
                            ),
                          ]),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {},
                            child: const Text('Cancelar'),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text('Salvar'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: const Text('Alert Dialog')),
            ElevatedButton(
                onPressed: () async {
                  final selectedTime = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  );
                  print('O horario selecionado foi $selectedTime');
                },
                child: const Text('Time Picker')),
            ElevatedButton(
              onPressed: () async {
                final selectedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2025),
                );
                print('O horario selecionado foi $selectedDate');
              },
              child: const Text('Date Picker'),
            ),
            ElevatedButton(
              onPressed: () async {
                showAboutDialog(
                  context: context,
                  applicationIcon: const Icon(Icons.flutter_dash),
                );
              },
              child: const Text('About Dialog'),
            ),
          ],
        ),
      ),
    );
  }
}
