import 'package:flutter/material.dart';
import 'package:meuapppersistencia/cenas/cadastro.dart';

class lista_de_contatos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('olá'),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              title: Text(
                'nome de usuário',
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text('conta do usuário'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            final Future futuros_dados_de_cadastro = Navigator.push(
              context, //.of(context)
              MaterialPageRoute(
                builder: (context) {
                  return cadastro();
                },
              ),
            );
            futuros_dados_de_cadastro.then(
              (texto_de_cadastro_feito) =>
                  {debugPrint(texto_de_cadastro_feito.toString())},
            );
          },
          child: Icon(Icons.add)),
    );
  }
}
