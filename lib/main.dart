import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Center(
              child: Column(
                children: [
                  Container(
                    child: Text('Samta Sepatu')
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text('email'),
                        ),
                        Container(
                          child: Text('email'),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ),
        ),
      )
    );
  }
}