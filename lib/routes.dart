

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samta_sepatu/shared/shareds.dart';
import 'package:samta_sepatu/ui/pages/pages.dart';

Route<dynamic> generateRoute(RouteSettings setting){
  switch (setting.name) {
    case LoginRoute:
      return MaterialPageRoute(builder: (context)=> LoginPage());
      break;
    case ProductListRoute:
      return MaterialPageRoute(builder: (context)=> ProductListPage());
      break;
    case RegisterRoute:
      return MaterialPageRoute(builder: (context)=> RegisterPage());
      break;
    default:
      return MaterialPageRoute(builder: (context)=> UnknownPage());
  }
}