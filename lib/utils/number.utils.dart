import 'package:intl/intl.dart';

extension NumUtils on int {
  String get toIDR {
    return NumberFormat.currency(
      locale: 'id',
      symbol: 'Rp',
      decimalDigits: 0,
    ).format(this);
  }
}
