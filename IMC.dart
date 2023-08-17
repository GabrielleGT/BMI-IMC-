import 'dart:io';
main (){

CalculoImc();
}


//programa que calcula o imc
CalculoImc(){
 print("=== Your Weight === (Kg) ");
 String TextPeso = stdin.readLineSync() ?? "";
 int peso = int.parse(TextPeso);

 print("=== Your Height === (cm) ");
 String textAltura = stdin.readLineSync() ?? "";
 double altura = double.parse(textAltura);

 double imc = (calcImcExpres(peso, altura));
 imprimirResultado(imc);
}

// função que recebe o peso e altura e retorna o imc
double calcImcExpres(int peso, double altura){
  return peso / (altura * altura);

}

// imprime o resultado baseado no imc passado por parâmetro
imprimirResultado(double imc){

 print("====================");


 if(imc < 18.5){
 print("Underweight");
} else if (imc > 18.5 && imc < 24.9){
 print("Normal");
} else if (imc > 25.0 && imc < 29.9){
 print("Overweight");
} else if (imc > 30.0 && imc < 34.9){
 print("Obese");
} else if (imc > 35.0 && imc < 39.9){
 print("Extremely obese");
} else 
 print("Morbidly obese");

}
