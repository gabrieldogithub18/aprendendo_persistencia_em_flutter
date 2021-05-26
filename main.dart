import 'package:flutter/material.dart';
import 'dart:async';
import 'package:meuapppersistencia/cenas/cadastro.dart';
import 'package:meuapppersistencia/cenas/daxibord.dart';
import 'package:meuapppersistencia/cenas/contatos_lista.dart';
import 'package:meuapppersistencia/database/app_persistencia_database.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

//import 'package:path_provider/path_provider.dart';

//import 'package:receive_sharing_intent/receive_sharing_intent.dart';
/*import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart'; */

void main() {
  runApp(MyApp());
  salvarcontato(convertor_de_contatos('gabriel', '2002', 0)).then(
    (id) {
      encontrartudo().then(
        (contatos) {
          debugPrint(contatos.toString());
        },
      );
    },
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: daxibord(),
    );
  }
}
