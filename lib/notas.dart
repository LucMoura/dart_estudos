import 'dart:io';

void incio(){
  List<String> notas = <String> [];
  menu(notas);
}

void menu(List<String> notas){
  String comando = getComando();

  switch (comando) {
    case "1":
      adicionarNotas(notas);
      menu(notas);
    case "2":
      listarLista(notas);
      menu(notas);
    case "3":
      print("Raleu viu mofi\nRaleu");
      break;
    default:
      print("Comando inválido");
      menu(notas);
  }
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
  Process.run('cls', []).then((result) {
    print(result.stdout);
    print(result.stderr);
  });
  return notas;

}

String getComando(){
  print("Digite um comando\n1-Adicionar um objeto 2-Listar os objetos 3-Sair");
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
}