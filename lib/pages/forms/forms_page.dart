import 'package:flutter/material.dart';

class FormsPage extends StatefulWidget {
  const FormsPage({super.key});

  @override
  State<FormsPage> createState() => _FormsPageState();
}

class _FormsPageState extends State<FormsPage> {
  // String texto = '';
  final formKey = GlobalKey<FormState>(); // so pode ser associado a um form, cada form deve ter sua key unica
  final nameEC = TextEditingController(); //ele vai ser o controlador do textField, ele que recebe os valores, sendo possivel recuperar os dados
  String categoria = 'Categoria1';

  @override
  void dispose() {
    nameEC.dispose(); // ele faz o descarte do controlador criado, fazendo com que ele seja encerrado e a memoria alocada para uso dele limpa
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forms'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                /// TextField é a forma mais simples de fazer, porem nao é a ideal
                // TextField(
                //   onChanged: (String value) {
                //     setState(() {
                //       texto = value;
                //     });
                //   },
                // ),
                // const SizedBox(height: 10),
                // Text('Texto digitado: $texto'),
                /// a validação de campo so é possivel no widget TextFormField
                TextFormField(
                  // autovalidateMode: AutovalidateMode.always, //faz com que ao acessar a pagina ele ja seja validado
                  controller: nameEC,
                  maxLines: null, // pasando null o textfield vai crescendo de tamanho de acordo com a digitação
                  decoration: InputDecoration(
                    labelText: 'Nome Completo',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Colors.green),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Colors.green),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Colors.green),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Colors.red),
                    ),
                    isDense: true,
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo X não preenchido';
                    }
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  // autovalidateMode: AutovalidateMode.always, //faz com que ao acessar a pagina ele ja seja validado
                  controller: nameEC,
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Colors.green),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Colors.green),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Colors.green),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Colors.red),
                    ),
                    isDense: true,
                  ),
                  obscureText: true,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo X não preenchido';
                    }
                  },
                ),
                const SizedBox(height: 20),
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    labelText: 'Categoria',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Colors.green),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Colors.green),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Colors.green),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Colors.red),
                    ),
                  ),
                  value: categoria,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Categoria não selecionada';
                    }
                  },
                  onChanged: (String? newValue) {
                    if (newValue != null) {
                      setState(() {
                        categoria = newValue;
                      });
                    }
                  },
                  items: const [
                    DropdownMenuItem(
                      value: 'Categoria1',
                      child: Text('Categoria 1'),
                    ),
                    DropdownMenuItem(
                      value: 'Categoria2',
                      child: Text('Categoria 2'),
                    ),
                    DropdownMenuItem(
                      value: 'Categoria3',
                      child: Text('Categoria 3'),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    var formValid = formKey.currentState?.validate() ?? false;
                    var message = 'Formulário Inválido';
                    if (formValid) {
                      message = 'Formulário Válido (Name: ${nameEC.text})';
                    }
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(message),
                      ),
                    );
                  },
                  child: const Text('Salvar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
