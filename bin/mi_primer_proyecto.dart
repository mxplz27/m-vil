/*
---------------------------------------------------------
Programa: Perfil de un Aprendiz SENA
Autor: Mariana López Palencia

Este programa solicita la información de un aprendiz,
calcula el promedio de tres notas y determina su estado
académico.
---------------------------------------------------------
*/

import 'dart:io';

void main() {
  //================ DATOS DEL APRENDIZ ================

  print("===========================================");
  print("      REGISTRO DEL APRENDIZ SENA");
  print("===========================================\n");

  stdout.write("Ingrese el nombre del aprendiz: ");
  String nombre = stdin.readLineSync()!;

  stdout.write("Ingrese la edad: ");
  int edad = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese el programa de formación: ");
  String programa = stdin.readLineSync()!;

  stdout.write("Ingrese el centro de formación: ");
  String centro = stdin.readLineSync()!;

  stdout.write("¿El aprendiz está activo? (Si/No): ");
  String estado = stdin.readLineSync()!.toLowerCase();

  bool estaActivo = estado == "si";

  //================ REGISTRO DE NOTAS =================

  print("\n========== REGISTRO DE NOTAS ==========");

  stdout.write("Ingrese la nota 1: ");
  double nota1 = double.parse(stdin.readLineSync()!);

  stdout.write("Ingrese la nota 2: ");
  double nota2 = double.parse(stdin.readLineSync()!);

  stdout.write("Ingrese la nota 3: ");
  double nota3 = double.parse(stdin.readLineSync()!);

  //================ VARIABLES =================

  final String instructor = "Carlos Andrés Castro Jaramillo";

  const double notaMinima = 3.5;

  var promedio = (nota1 + nota2 + nota3) / 3;

  //================ VALIDACIONES =================

  bool aprobo = promedio >= notaMinima;

  bool mayorEdad = edad >= 18;

  bool puedeContinuar = aprobo && estaActivo;

  bool requiereApoyo = !aprobo || !estaActivo;

  //================ NOTA MÁS ALTA =================

  double notaMayor = nota1;

  if (nota2 > notaMayor) {
    notaMayor = nota2;
  }

  if (nota3 > notaMayor) {
    notaMayor = nota3;
  }

  //================ NOTA MÁS BAJA =================

  double notaMenor = nota1;

  if (nota2 < notaMenor) {
    notaMenor = nota2;
  }

  if (nota3 < notaMenor) {
    notaMenor = nota3;
  }

  //================ RENDIMIENTO =================

  String rendimiento;

  if (promedio >= 4.5) {
    rendimiento = "Excelente";
  } else if (promedio >= 4.0) {
    rendimiento = "Bueno";
  } else if (promedio >= 3.5) {
    rendimiento = "Aceptable";
  } else {
    rendimiento = "Deficiente";
  }

  //================ FECHA =================

  final fecha = DateTime.now();

  //================ RESULTADOS =================

  print("\n===========================================");
  print("       INFORMACIÓN DEL APRENDIZ");
  print("===========================================");

  print("Nombre: $nombre");
  print("Edad: $edad años");
  print("Programa de formación: $programa");
  print("Centro de formación: $centro");
  print("Instructor: $instructor");

  print("\n============== NOTAS ==============");

  print("Nota 1: $nota1");
  print("Nota 2: $nota2");
  print("Nota 3: $nota3");

  print("Promedio: ${promedio.toStringAsFixed(2)}");
  print("Nota más alta: $notaMayor");
  print("Nota más baja: $notaMenor");
  print("Rendimiento: $rendimiento");

  print("\n=========== VALIDACIONES ===========");

  print("Estado académico: ${aprobo ? "Aprobó" : "No aprobó"}");
  print("Aprendiz activo: ${estaActivo ? "Sí" : "No"}");
  print("Mayor de edad: ${mayorEdad ? "Sí" : "No"}");
  print("Puede continuar: ${puedeContinuar ? "Sí" : "No"}");
  print("Requiere apoyo: ${requiereApoyo ? "Sí" : "No"}");

  print("\nFecha de ejecución: $fecha");

  print("\n===========================================");
  print("        FIN DEL PROGRAMA");
  print("===========================================");
}