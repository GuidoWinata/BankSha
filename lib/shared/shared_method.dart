import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

String formatCurrency(num number, {String symbol = 'Rp'}) {
  return NumberFormat.currency(
    locale: 'id',
    symbol: symbol,
    decimalDigits: 0,
  ).format(number);
}
