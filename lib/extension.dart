part of 'big_head_softwares.dart';

/// The [Capitalize] extension helps to capitalize first letter of each word in the senetence
extension Capitalize on String {
  String capitalize() {
    List<String> list = this.split(' ');
    String finalList = '';
    for (var i = 0; i < list.length; i++) {
      list[i][0].toUpperCase();
      finalList += '${list[i]} ';
    }
    return finalList;
  }
}

/// The [CapitalizeFirst] helps to captialize first letter of the sentence
extension CapitalizeFirst on String {
  String capitalizeFirst() {
    return '${this[0].toUpperCase()}${substring(1)}';
  }
}

/// The [StringToDouble] extension helps to parse string to double value with ease
extension StringToDouble on String {
  double toDouble() {
    return double.parse(this);
  }
}

/// The [StringToInt] extension helps to parse string to int value with ease
extension StringToInt on String {
  int toInt() {
    return int.parse(this);
  }
}

/// [ConvertDoubleToLacs] converts value to lac
extension ConvertDoubleToLacs on double {
  String toLacs() {
    return '${(this / 100000).toStringAsFixed(2)}';
  }
}

/// [ConvertDoubleToLacs] converts value to lac
extension ConvertStringtoLacs on String {
  String toLacs() {
    return '${(double.parse(this) / 100000).toStringAsFixed(2)}';
  }
}
