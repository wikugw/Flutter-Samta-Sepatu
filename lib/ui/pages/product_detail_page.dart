part of 'pages.dart';

class ProductDetailPage extends StatefulWidget {
  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {

  int orderCount = 1;

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
            child: Column(
              children: [
                // --------------------------------------------- //
                // tombol kembali                                //
                // --------------------------------------------- //
                Container(
                  padding: EdgeInsets.fromLTRB(0, 40, 290, 0),
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text( 'kembali' ),
                  ),
                ),
                // --------------------------------------------- //
                // gambar dan penjelasan                         //
                // --------------------------------------------- //
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 40),
                  child: Card(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // --------------------------------------------- //
                              // gambar                                        //
                              // --------------------------------------------- //
                              Expanded(
                                flex: 6,
                                child: Container(
                                  height: 200,
                                  decoration : BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.fitWidth,
                                      alignment: FractionalOffset.topCenter,
                                      image: NetworkImage(
                                        'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//87/MTA-7172331/whale_whale_fins_sepatu_katak_diving_snorkeling_full09_ft9phsah.jpg'
                                      ),
                                    ),
                                  ),
                                ) 
                              ),
                              // --------------------------------------------- //
                              // penjelasan                                    //
                              // --------------------------------------------- //
                              Expanded(
                                flex: 4,
                                child: Column(
                                  children: [
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
                                  ],
                                ), 
                              )
                            ], 
                          ),
                        ),
                        // --------------------------------------------- //
                        // text field jumlah pesan                       //
                        // --------------------------------------------- //
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Row(
                          children: [
                            Expanded(
                              flex: 5,
                              child: Container(
                                child: Text(
                                  'jumlah pesan',
                                  textAlign: TextAlign.center,
                                )
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(color: Colors.black),
                                  ),
                                  child: TextFormField (
                                    initialValue: orderCount.toString(),
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Retype your password'
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        ),
                        // --------------------------------------------- //
                        // tombol masukkan keranjang                     //
                        // --------------------------------------------- //
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          padding: EdgeInsets.only(left: 180),
                          child: RaisedButton(
                            onPressed: (){},
                            child: Text('Masukkan keranjang'),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}