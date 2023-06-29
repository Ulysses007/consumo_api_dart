import 'package:consumo_api_dart/models/aluno_model.dart';
import 'package:consumo_api_dart/repositories/aluno_repository.dart';

Future<void> main () async {
final alunoRepository = AlunoRepository();

final alunos = await alunoRepository.buscarTodos();

//print(alunos);


final aluno = await alunoRepository.buscarPorId(1);

print('Cursos ');

for (var curso in aluno.cursos) {
  
print('${curso.nome}: ${aluno.nome} é aluno: ${curso.isAluno}');
}
}