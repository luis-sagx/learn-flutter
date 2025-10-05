import 'package:intl/intl.dart';

class NumbersFormat {
  static String formatNumber(double number) {
    final NumberFormat formatter = NumberFormat.compactCurrency(
      decimalDigits: 0,
      symbol: '',
    );
    return formatter.format(number);
  }
}
