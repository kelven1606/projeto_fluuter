class jogoalfabetoJson {
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

  jogoalfabetoJson.fromJson(Map<String, dynamic> json) {
    pergunta = json['pergunta'];
    resposta1 = json['resposta1'];
    resposta2 = json['resposta2'];
    resposta3 = json['resposta3'];
    resposta4 = json['resposta4'];
    respostacerta = json['respostacerta'];
    imagem = json['imagem'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['pergunta'] = pergunta;
    data['resposta1'] = resposta1;
    data['resposta2'] = resposta2;
    data['resposta3'] = resposta3;
    data['resposta4'] = resposta4;
    data['respostacerta'] = respostacerta;
    data['imagem'] = imagem;

    return data;
  }
}
