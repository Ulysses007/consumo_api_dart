// ignore_for_file: public_member_api_docs, sort_constructors_first
class Aluno {
 int id;
 String nome;
 int ? idade;
 List<String> nomeCurso;
 List<String> cursos;
  Aluno({
    required this.id,
    required this.nome,
    this.idade,
    required this.nomeCurso,
    required this.cursos,
  });




}
