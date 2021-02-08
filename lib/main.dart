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
          body: SafeArea(
            child: Stack(
              children: [
                ListView(
                children: [
                  Container(
                    margin: EdgeInsetsDirectional.only(bottom: 20),
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.black))
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(right: BorderSide(color: Colors.black))
                            ),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                icon: Icon(Icons.arrow_drop_down),
                                color: Colors.grey,
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: IconButton(
                            icon: Icon(Icons.shopping_cart),
                            color: Colors.grey,
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
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
                                Container(
                                  margin: EdgeInsets.symmetric( vertical: 5 ),
                                  child: Text('nama'),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric( vertical: 5 ),
                                  child: Text('Rp. 150.000'),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric( vertical: 5 ),
                                  child: Text(
                                    'Ini adalah sepatu katak super cepattt bisa dipake di air di pohon',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Container(
                                  child: RaisedButton(
                                    onPressed: (){},
                                    child: Text('Pesan'),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ]
              ),
              ],
            ),
          ),
        )
      ),
    );
  }
}