
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:consumo_api_dart/models/aluno_model.dart';

class AlunoRepository {


Future<List<Aluno>> buscarTodos() async {

final alunosResponse = await http.get(Uri.parse('http://localhost:8080/alunos'));

final alunosList = jsonDecode(alunosResponse.body);

final todosAlunos = alunosList.map<Aluno>((alunoMap)=> Aluno.fromMap(alunoMap)).toList();

return todosAlunos;
}
  
}