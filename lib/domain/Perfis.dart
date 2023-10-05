class Perfis {
  late String nome_usuario;
  late String biografia;
  late String imagem;


  Perfis(
      {required this.nome_usuario,
      required this.biografia,
      required this.imagem,});


  Perfis.fromJson(Map<String, dynamic> json) {
    nome_usuario = json['nome_usuario'];
    biografia = json['biografia'];
    imagem = json['imagem'];
  }


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome_usuario'] = nome_usuario;
    data['biografia'] = biografia;
    data['imagem'] = imagem;
    return data;
  }
}
