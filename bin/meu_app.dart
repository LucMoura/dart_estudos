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


void main() {
    int num1 = int.parse(stdin.readLineSync()!);
    int num2 = int.parse(stdin.readLineSync()!);
    

    soma(num1, num2);
    sub(num1, num2);
    divis(num1, num2);
    mult(num1, num2);
    
}
