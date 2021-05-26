import 'package:flutter/material.dart';
import 'package:meuapppersistencia/cenas/contatos_lista.dart';

class daxibord extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('este app é para aprender a fazer persistencia de dados'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 30),
              child: Image.asset('imagens/bytebank_logo.png'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
              child: Material(
                color: Colors.green.shade700,
                child: InkWell(
                  // tanto o GestureDetector queanto o InkWell têm o onTap mas só o InkWell pode personalizar o
                  onTap: () {
                    //clique do botão
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => lista_de_contatos(),
                      ),
                    );
                  },
                  child: Container(
                    height: 100,
                    width: 150,
                    //color: Colors.green.shade700, os filhos de InkWell não podem definir a cor, quem define são seus irmãos
                    child: Column(
                      // se desobedecer esta regra acaba que a personalização não funciona
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Icon(Icons.people, size: 25),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                          child: Text(
                            'contatos',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
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
