
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:consumo_api_dart/models/aluno_model.dart';

class AlunoRepository {


// essa função retorna todos os alunos existentem no nosso banco de dados. 
Future<List<Aluno>> buscarTodos() async {

final alunosResponse = await http.get(Uri.parse('http://localhost:8080/alunos'));

final alunosList = jsonDecode(alunosResponse.body);

final todosAlunos = alunosList.map<Aluno>((alunoMap)=> Aluno.fromMap(alunoMap)).toList();

return todosAlunos;
}

Future<Aluno> buscarPorId(int id) async {
final alunosResponse = await http.get(Uri.parse('http://localhost:8080/alunos/$id'));

return Aluno.fromJson(alunosResponse.body);
}
  
}