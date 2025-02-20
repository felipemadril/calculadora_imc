import 'dart:convert';
import 'dart:io';

class Utils {
  static String lerStringComTexto(String texto) {
    print(texto);
    return lerString();
  }

  static String lerString() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static double lerDouble() {
    var value = lerString();
    try {
      return double.parse(value);
    } catch (e) {
      return 0.0;
    }
  }

  static double lerDoubleComTexto(String texto) {
    print(texto);
    return lerDouble();
  }
}
