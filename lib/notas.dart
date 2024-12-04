import 'dart:io';

void incio(){
  List<String> notas = <String> [];
  getComando();
  adicionarNotas(notas);
  listarLista(notas);


}

List<String> adicionarNotas(List<String> notas){
  print("Escreva uma nota");
  String? nota = "";

  nota = stdin.readLineSync();

  if(nota == null || nota.isEmpty){
    print("Não é possível adicionar uma nota vazia");
    adicionarNotas(notas);
  }
  notas.add(nota!);

  getComando();
  return notas;

}

String getComando(){
  print("Digite um comando\n1-Adicionar um objeto\n2-Listar os objetos\n3-Sair");
  List<String> comandos = <String>["1","2","3"];
  List<String> notas = <String> [];
  String? entrada = stdin.readLineSync();

  if(entrada == null || !comandos.contains(entrada)){
      print("Comando Inválido");
      getComando();
  }

  return entrada!;
}

void listarLista(List<String> notas){
  for(var i = 0; i < notas.length; i++){
    print(notas[i]);
  }
  getComando();
}