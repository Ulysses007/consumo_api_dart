// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Telefone {
  int ddd;
  String fone;

  Telefone({
    required this.ddd,
    required this.fone,
  });

// metodo que pega um mao<String, dynamic> e transforma em um json pelo pacote dart: convert (jsonEncode)
//toJson = ParaJson
// passo 1

  Map<String, dynamic> toMap() {
    return {
      'ddd': ddd,
      'telefone': fone,
    };
  }

// metodo que pega o nosso objeto Telefone e transforma em um Objeto Map<String, dynamic>
//toMap = paraMapa
// passo 2
  String toJson() => jsonEncode(toMap());

// passo 2 da deserialização
  factory Telefone.fromMap(Map<String, dynamic> map) {
    return Telefone(
      ddd: map['ddd'],
      fone: map['fone'],
    );
  }

  factory Telefone.fromJson(String json) {
    final jsonMap = jsonDecode(json);
    return Telefone.fromMap(jsonMap);
  }
}
