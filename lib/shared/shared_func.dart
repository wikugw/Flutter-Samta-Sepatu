part of 'shareds.dart';

void flushMessage(String message, context) {
  Flushbar(
    message: message,
    backgroundColor: mainColor,
    duration: Duration(seconds: 3),
    flushbarPosition: FlushbarPosition.BOTTOM,
  )..show(context);
}
