import 'dart:io';


void soma(int num1, int num2){
        print(num1! + num2!);
}

void sub(int num1, int num2){
    print(num1! - num2!);
}

void mult(int num1, int num2){
    print(num1! * num2!);
}

void divis(int num1, int num2){
    print(num1! / num2!);
}

void inicio(int num1, int num2){
    print("Selecione qual operação você deseja\n1-Soma\n2-Subtração\n3-Multiplicação\n4-Divisão");

    var oper = stdin.readLineSync();
    
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
            break;
    }
}


void main() {
    print("Digite os números que deseja");
    int num1 = int.parse(stdin.readLineSync()!);
    int num2 = int.parse(stdin.readLineSync()!);
    inicio(num1, num2);

}
