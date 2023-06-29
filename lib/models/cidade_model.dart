import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Cidade {

  int id; 
 String nome; 
  Cidade({
    required this.id,
    required this.nome,
  });



  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nome': nome,
    };
  }

  String toJson() => json.encode(toMap());

  factory Cidade.fromMap(Map<String, dynamic> map) {
    return Cidade(
      id: map['id']  ?? '',
      nome: map['nome']  ?? '',
    );
  }



  factory Cidade.fromJson(String source) => Cidade.fromMap(json.decode(source) as Map<String, dynamic>);
}
