class Cadastros {
  late String nome;
  late String email;
  late String senha;

  Cadastros({required this.nome, required this.email, required this.senha});

  Cadastros.fromJson(Map<String, dynamic> json) {
    nome = json['nome'];
    email = json['email'];
    senha = json['senha'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['nome'] = nome;
    data['email'] = email;
    data['senha'] = senha;
    return data;
  }
}
