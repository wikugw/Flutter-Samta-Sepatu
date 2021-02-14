part of 'shareds.dart';

void flushMessage(String message, context) {
  Flushbar(
    message: message,
    backgroundColor: mainColor,
    duration: Duration(seconds: 3),
    flushbarPosition: FlushbarPosition.BOTTOM,
  )..show(context);
}

extension IntParsing on int {
  String toIdr() {
    return NumberFormat.currency(
            locale: 'id_ID', symbol: 'IDR ', decimalDigits: 0)
        .format(this);
  }
}
