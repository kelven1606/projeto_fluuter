class jogoalfabetoJson {
  late int id;
  late String pergunta;
  late String resposta1;
  late String resposta2;
  late String resposta3;
  late String resposta4;
  late String respostacerta;
  late String imagem;

  jogoalfabetoJson(
      {required this.pergunta,
      required this.resposta1,
      required this.resposta2,
      required this.resposta3,
      required this.resposta4,
      required this.respostacerta,
      required this.imagem});

  jogoalfabetoJson.id({required this.id});

  jogoalfabetoJson.fromJson(Map<String, dynamic> json) {
    pergunta = json['PERGUNTA'];
    resposta1 = json['RESPOSTA1'];
    resposta2 = json['RESPOSTA2'];
    resposta3 = json['RESPOSTA3'];
    resposta4 = json['RESPOSTA4'];
    respostacerta = json['RESPOSTACERTA'];
    imagem = json['IMAGEM'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['PERGUNTA'] = this.pergunta;
    data['RESPOSTA1'] = this.resposta1;
    data['RESPOSTA2'] = this.resposta2;
    data['RESPOSTA3'] = this.resposta3;
    data['RESPOSTA4'] = this.resposta4;
    data['RESPOSTACERTA'] = this.respostacerta;
    data['IMAGEM'] = this.imagem;

    return data;
  }

  Map<String, dynamic> toJsonId() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['ID'] = id;
    return data;
  }
}
