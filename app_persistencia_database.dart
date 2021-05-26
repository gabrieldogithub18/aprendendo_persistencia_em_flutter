import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:meuapppersistencia/cenas/cadastro.dart';
import 'dart:async';
import 'package:floor/floor.dart' as floor;
/*import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart'; */

Future<Database> createDatabase() {
  return getDatabasesPath().then(
    //depois que ele pega o banco do SQflite dá um then
    (dbPath) {
      // cria um parâmetro para usa-lo e coloca no join
      final String banco_dados = join(dbPath, 'banco_persistencia.db'); // a fim
      return openDatabase(banco_dados, onCreate: (db, version) {
        // de criar um nome para o banco, depois abrimos a variável que recebe isso com openDatabase() e definimos a tabela e a versão
        db.execute('CREATE TABLE contatos('
            'id INTEGER PRIMARY KEY, '
            'nome TEXT, '
            'numero_de_conta INTEGER)');
      }, version: 1);
    },
  );
}

Future<int> salvarcontato(convertor_de_contatos contato) {
  return createDatabase().then(
    (db) {
      final Map<String, dynamic> mapa_de_contatos = Map();
      //mapa_de_contatos['id'] = contato.id;
      mapa_de_contatos['nome'] = contato.nome;
      mapa_de_contatos['numero_de_conta'] = contato.numero;
      return db.insert('contatos', mapa_de_contatos);
    },
  );
}

Future<List<convertor_de_contatos>> encontrartudo() {
  return createDatabase().then(
    (db) {
      return db.query('contatos').then(
        (maps) {
          final List<convertor_de_contatos> contatos = [];
          for (Map<String, dynamic> map in maps) {
            final convertor_de_contatos contato = convertor_de_contatos(
              map['id'],
              map['nome'],
              map['numero_de_conta'],
            );
            contatos.add(contato);
          }
          return contatos;
        },
      );
    },
  );
}
