import 'dart:convert';

import 'package:consumo_api_dart/models/curso_model.dart';
import 'package:consumo_api_dart/models/endereco_model.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Aluno {
  int id;
  String nome;
  int? idade;
  List<String> nomeCursos;
  List<Curso> cursos;
  Endereco endereco;
  Aluno({
    required this.id,
    required this.nome,
    this.idade,
    required this.nomeCursos,
    required this.cursos,
    required this.endereco,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{
      'id': id,
      'nome': nome,
      'idade': idade,
      'nomeCursos': nomeCursos,
      'cursos': cursos.map((curso) => curso.toMap()).toList(),
      'endereco': endereco.toMap(),
    };

    if (idade != null) {
      map['idade'] = idade;
    }

    return map;
  }

  String toJson() => json.encode(toMap());

  factory Aluno.fromJson(String json) => Aluno.fromMap(jsonDecode(json));

  factory Aluno.fromMap(Map<String, dynamic> map) {
    return Aluno(
      id: map['id'] ?? '',
      nome: map['nome'] ?? '',
      idade: map['idade'],
      nomeCursos: List<String>.from(map['nomeCursos']),
      cursos: map['cursos']
              ?.map<Curso>((cursosMap) => Curso.fromMap(cursosMap))
              .toList() ??
          <Curso>[],
      endereco: Endereco.fromMap(map['endereco'] ?? <String, dynamic>{}),
    );
  }

  @override
  String toString() {
    return 'Aluno(id: $id, nome: $nome, idade: $idade, nomeCursos: $nomeCursos, cursos: $cursos, endereco: $endereco)';
  }
}
