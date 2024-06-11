import 'dart:io';

import 'package:calcular_imc/classes/utils.dart';
import 'package:calcular_imc/exception/nome_invalido_exception.dart';

void execute() {
  print("Bem vindo ao sistema de Calculo de IMC!");
  String nome = Utils.lerStringComTexto("Digite o seu nome:");
  try {
    if (nome.trim() == "") {
      throw NomeInvalidoException();
    }
  } on NomeInvalidoException {
    nome = "Nome Padrão";
    print(NomeInvalidoException);
    exit(0);
  } catch (e) {
    print(e);
    exit(0);
  }

  double peso = 0.0;
  double altura = 0.0;

  peso = Utils.lerDoubleComTexto("Digite o peso: ");
  altura = Utils.lerDoubleComTexto("Digite o altura: ");

  double imc = peso / (altura * altura);

  switch (imc) {
    case < 16:
      print(
          'Olá $nome, conforme seu IMC está classificado como: Magreza grave.');
      break;
    case < 17:
      print(
          'Olá $nome, conforme seu IMC está classificado como: Magreza moderada.');
      break;
    case < 18.5:
      print(
          'Olá $nome, conforme seu IMC está classificado como: Magreza leve.');
      break;
    case < 25:
      print('Olá $nome, conforme seu IMC está classificado como: Saudável');
      break;
    case < 30:
      print('Olá $nome, conforme seu IMC está classificado como: Sobrepeso.');
      break;
    case < 35:
      print(
          'Olá $nome, conforme seu IMC está classificado como: Obesidade Grau I.');
      break;
    case < 40:
      print(
          'Olá $nome, conforme seu IMC está classificado como: Obesidade Grau II (severa).');
      break;
    case > 40:
      print(
          'Olá $nome, conforme seu IMC está classificado como: Obesidade Grau III (mórbida).');
      break;
    default:
      print('Alguma informação não foi preenchida corretamente.');
  }
}
