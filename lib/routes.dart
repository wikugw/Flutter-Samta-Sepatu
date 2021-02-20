

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samta_sepatu/shared/shareds.dart';
import 'package:samta_sepatu/ui/pages/pages.dart';

Route<dynamic> generateRoute(RouteSettings setting){
  switch (setting.name) {

    // ------------------------------------------------------------------
    // sign up route
    // ------------------------------------------------------------------
    case LoginRoute:
      return MaterialPageRoute(builder: (context)=> LoginPage());
      break;
    case RegisterRoute:
      return MaterialPageRoute(builder: (context)=> RegisterPage());
      break;
    // ------------------------------------------------------------------

    // ------------------------------------------------------------------
    // product route
    // ------------------------------------------------------------------
    case ProductListRoute:
      return MaterialPageRoute(builder: (context)=> ProductListPage());
      break;
    case ProductDetailRoute:
      return MaterialPageRoute(builder: (context)=> ProductDetailPage());
      break;
    // ------------------------------------------------------------------

    // ------------------------------------------------------------------
    // checkout route
    // ------------------------------------------------------------------
    case CheckoutListRoute:
      return MaterialPageRoute(builder: (context)=> CheckoutListPage());
      break;
     case CheckoutDetailRoute:
      return MaterialPageRoute(builder: (context)=> CheckoutDetailPage());
      break;
    // ------------------------------------------------------------------

    // ------------------------------------------------------------------
    // transaction route
    // ------------------------------------------------------------------
    case TransactionListRoute:
      return MaterialPageRoute(builder: (context)=> TransactionListPage());
      break;
    // ------------------------------------------------------------------

    default:
      return MaterialPageRoute(builder: (context)=> UnknownPage());
  }
}