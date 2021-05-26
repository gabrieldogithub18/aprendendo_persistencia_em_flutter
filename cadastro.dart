import 'package:flutter/material.dart';

class cadastro extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return cadastro_pitoco();
  }
}

class cadastro_pitoco extends State<cadastro> {
  final TextEditingController nome_de_usuario = TextEditingController();
  final TextEditingController numero_de_conta = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('esta é a tela de cadastro'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              child: TextField(
                controller: nome_de_usuario,
                decoration: InputDecoration(
                  icon: Icon(Icons.account_circle),
                  labelText: 'Nome Completo',
                  contentPadding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                ),
                style: TextStyle(fontSize: 16.0),
                keyboardType: TextInputType.name,
              ),
            ),
            Card(
              child: TextField(
                controller: numero_de_conta,
                decoration: InputDecoration(
                  icon: Icon(Icons.dialpad_outlined),
                  labelText: 'Número de Conta',
                  contentPadding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                ),
                style: TextStyle(fontSize: 16.0),
                keyboardType: TextInputType.name,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: SizedBox(
                width: double.maxFinite,
                child: TextButton(
                  child: Text(
                    'Confirmar',
                    style: TextStyle(fontSize: 16.0, color: Colors.black),
                  ),
                  onPressed: () {
                    final String nome_usuario = nome_de_usuario.text;
                    final String numero_usuario = numero_de_conta.text;
                    final convertor_de_contatos novo_contato =
                        convertor_de_contatos(nome_usuario, numero_usuario, 0);
                    Navigator.pop(context,
                        novo_contato); // apenas três parâmetros, por isso a necessidade de funções
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.amber[400],
                    padding: const EdgeInsets.all(16.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class convertor_de_contatos {
  final String nome;
  final String numero;
  final int id;

  convertor_de_contatos(this.nome, this.numero, this.id);
  @override
  String toString() {
    return 'o usuário $nome de conta $numero';
  }
}
