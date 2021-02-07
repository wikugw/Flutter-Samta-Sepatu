import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // --------------------------------------------- //
      // dismiss keyboad on tap outside textbox        //
      // --------------------------------------------- //
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: MaterialApp(
        home: Scaffold(
          body: SafeArea(
            child: Center(
              child: Column(
                children: [
                  // --------------------------------------------- //
                  // Judul container                               //
                  // --------------------------------------------- //
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 50, 0, 70),
                    child: Text('Samta Sepatu')
                  ),
                  // --------------------------------------------- //
                  // email input container                         //
                  // --------------------------------------------- //
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 3,
                          child: Center(
                            child: Text('email')
                          ),
                        ),
                        Expanded(
                          flex: 7,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.black),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Type your email address'
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // --------------------------------------------- //
                  // password input container                      //
                  // --------------------------------------------- //
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 3,
                          child: Center(
                            child: Text('password')
                          ),
                        ),
                        Expanded(
                          flex: 7,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.black),
                              ),
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Type your password'
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // --------------------------------------------- //
                  // login button container                        //
                  // --------------------------------------------- //
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    child: Center(
                      child: RaisedButton(
                        onPressed: () {},
                        child: Text('login'),
                      ),
                    ),
                  ),
                  // --------------------------------------------- //
                  // register button container                     //
                  // --------------------------------------------- //
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Center(
                      child: RaisedButton(
                        onPressed: () {},
                        child: Text('register'),
                      ),
                    ),
                  ),
                ],
              )
            ),
          ),
        )
      ),
    );
  }
}