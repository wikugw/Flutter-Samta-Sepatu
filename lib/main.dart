import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:samta_sepatu/bloc/userlogin_bloc.dart';
import 'package:samta_sepatu/shared/shareds.dart';
import 'routes.dart' as router;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [BlocProvider(create: (_) => UserloginBloc())],
        child: MaterialApp(
          theme: ThemeData(primaryColor: mainColor, accentColor: accentColor),
          debugShowCheckedModeBanner: false,
          onGenerateRoute: router.generateRoute,
          initialRoute: LoginRoute,
        ));
  }
}
