// ----------------------------------------------------------- //
// references                                                  //
// - grid view count                                           //
// https://flutter.dev/docs/cookbook/lists/horizontal-list     //
// ----------------------------------------------------------- //

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
          body: ListView(
            children: [
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                childAspectRatio: (3/5),
                physics: NeverScrollableScrollPhysics(),
                children: List.generate(9, (index) {
                  return Card(
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: () {
                        print('Card tapped.');
                      },
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Image.network(
                                'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//87/MTA-7172331/whale_whale_fins_sepatu_katak_diving_snorkeling_full09_ft9phsah.jpg'
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ]
          ),
        )
      ),
    );
  }
}