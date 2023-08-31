import 'package:intl/intl.dart';

class Utilities {
  static final _currencyFormatter = NumberFormat("###,###,###", "vi_VN");

  static String formatCurrency(dynamic value) {
    return _currencyFormatter.format(value).replaceAll(",", ".");
  }
}