import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

double? newCustomFunction(
  int numIteraciones,
  double numeroX,
) {
//calcular sen
  double x = numeroX * (3.141592653589793 / 180);
  double seno = math.sin(x);
  double suma = 0;
  bool positivo = true;
  for (int i = 1; i <= numIteraciones!; i = i + 2) {
    if (positivo) {
      suma += math.pow(x, i) / obtenerFactorial(2)!;
      positivo = false;
      double resultadoResta = seno - suma;
      double valorAbsoluto = resultadoResta.abs();
      if (valorAbsoluto < 0.000001) {
        break;
      }
    } else {
      suma -= math.pow(x, i) / obtenerFactorial(2)!;
      positivo = true;
      double resultadoResta = seno - suma;
      double valorAbsoluto = resultadoResta.abs();
      if (valorAbsoluto < 0.000001) {
        break;
      }
    }
  }
  return suma;
}

List<double>? newCustomFunctionCopy(double numeroX) {
//calcular sen
  double x = numeroX * (3.141592653589793 / 180);
  double seno = math.sin(x);
  double suma = 0;
  bool positivo = true;
  int i = 1;
  for (i = 1; i <= 2000; i = i + 2) {
    if (positivo) {
      suma += math.pow(x, i) / obtenerFactorial(2)!;
      positivo = false;
      double resultadoResta = seno - suma;
      double valorAbsoluto = resultadoResta.abs();
      if (valorAbsoluto < 0.000001) {
        break;
      }
    } else {
      suma -= math.pow(x, i) / obtenerFactorial(2)!;
      positivo = true;
      double resultadoResta = seno - suma;
      double valorAbsoluto = resultadoResta.abs();
      if (valorAbsoluto < 0.000001) {
        break;
      }
    }
  }
  return [suma, i.toDouble()];
}

int? obtenerFactorial(int variableN) {
  if (variableN == 0 || variableN == 1) {
    return 1;
  } else {
    int result = 1;
    for (int i = 2; i <= variableN; i++) {
      result *= i;
    }
    return result;
  }
}

double? aproxex(
  int variablex,
  int numIteraciones,
) {
  double sum = 1.0;
  double term = 1.0;

  for (int i = 1; i < numIteraciones; i++) {
    term *= variablex / i;
    sum += term;
  }
  return sum;
  //double x = 2.0;
  //double eToTheX = math.exp(x);
}

List<double>? aproxexnormal(double variablex) {
  double sum = 1.0;
  double term = variablex;
  int i = 1;

  while (term.abs() > 0.0001) {
    sum += term;
    term *= variablex / ++i;
  }

  return [sum, i.toDouble()];
}

double? aproxemenosx(
  double variablex,
  double numIteraciones,
) {
  double sum = 1.0;
  double term = 1.0;

  for (int i = 1; i < numIteraciones; i++) {
    term *= -variablex / i;
    sum += term;
  }

  return sum;
}

List<double>? aproxemenosxnormal(double variablex) {
  double sum = 1.0;
  double term = 1.0;
  int i = 1;

  while (term.abs() > 0.0001) {
    term *= -variablex / i;
    sum += term;
    i++;
  }
  return [sum, i.toDouble()];
}

List<String>? lectordepreposiciones(String preposicion) {
  List<String> preposiciones = [];
  int i = 0;
  for (i; i <= preposicion.length - 1; i++) {
    String caracter = preposicion[i];
    if (caracter == "p") {
      preposiciones.add("p");
    } else if (caracter == "q") {
      preposiciones.add("q");
    } else if (preposiciones == "r") {
      preposiciones.add("r");
    } else if (preposiciones == "s") {
      preposiciones.add("s");
    }
  }
  return preposiciones;
}

int factRec(int variableN) {
  if (variableN == 0 || variableN == 1) {
    return 1;
  } else {
    return variableN * (factRec(variableN - 1));
  }
}

String? sum1(int numIter) {
  String resultado = "";
  for (int i = 1; i <= numIter; i++) {
    resultado += (2 * i - 1).toString() + " + ";
  }
  return resultado;
}

String? sum2(int numIter) {
  String resultado = "";

  for (int i = 1; i <= numIter; i++) {
    resultado += (i * (i + 1)).toString() + " + ";
  }
  return resultado;
}

String? sum3(int numIter) {
  String resultado = "";

  for (int i = 1; i <= numIter; i++) {
    resultado += (i * (obtenerFactorial(i)!)).toString() + " + ";
  }
  return resultado;
}

String? sum4(int numIter) {
  String resultado = "";

  for (int i = 1; i <= numIter; i++) {
    resultado += (i * i).toString() + " + ";
  }
  return resultado;
}

String? sum5(int numIter) {
  String resultado = "";

  for (int i = 1; i <= numIter; i++) {
    resultado += (math.pow(-1, i) - 1 * i * i).toString() + " + ";
  }
  return resultado;
}

String? num6(int numIter) {
  String resultado = "";

  for (int i = 1; i <= numIter; i++) {
    resultado += (math.pow(i, 3)).toString() + " + ";
  }
  return resultado;
}

String? sum7(int numIter) {
  String resultado = "";

  for (int i = 1; i <= numIter; i++) {
    resultado += (1 / (2 * i - 1) * (2 * i + 1)).toString() + " + ";
  }
  return resultado;
}

String? num9(int numIter) {
  String resultado = "";

  for (int i = 1; i <= numIter; i++) {
    resultado += (1 / (i + 1) * (1 / (i + 1)) - 1).toString() + " + ";
  }
  return resultado;
}
