import 'dart:io';


void soma(int num1, int num2){
    print("O valor é ${num1 + num2}");
}

void sub(int num1, int num2){
    print("O valor é ${num1 - num2}");
}

void mult(int num1, int num2){
    print("O valor é ${num1 * num2}");
}

void divis(int num1, int num2){
    print("O valor é ${num1 / num2}");
}

void select(int num1, int num2){
    print("Selecione qual operação você deseja\n1-Soma\n2-Subtração\n3-Multiplicação\n4-Divisão");

    String? escolha = stdin.readLineSync();
    var oper;
    
    if(escolha != null){
        if(escolha != ""){
            oper = escolha;
        }
    }
    
    switch (oper) {
        case "1":
            soma(num1, num2);
            break;
        case "2":
            sub(num1, num2);
            break;
        case "3":
            mult(num1, num2);
            break;
        case "4":
            divis(num1, num2);
            break;
        default:
            print("Operação não existe");
            select(num1, num2);
            break;
    }
}
void inicio(){
    print("Digite o primeiro número");
    String? entrada = stdin.readLineSync();
    int num1 = 0, num2 = 0;
    if(entrada != null){
        if(entrada != ""){
            num1 = int.parse(entrada);
        }
    }
    
    print("Digite o segundo número");
    entrada = stdin.readLineSync();
    if(entrada != null){
        if(entrada != ""){
            num2 = int.parse(entrada);
        }
    }

    select(num1, num2);
}
