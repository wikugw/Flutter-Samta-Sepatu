part of 'pages.dart';

class CheckoutDetailPage extends StatefulWidget {
  @override
  _CheckoutDetailPageState createState() => _CheckoutDetailPageState();
}

class _CheckoutDetailPageState extends State<CheckoutDetailPage> {
  int totalHarga = 285000;
  int kodeUnik = 102;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            // --------------------------------------------- //
            // tombol kembali                                //
            // --------------------------------------------- //
            Container(
              margin: EdgeInsets.only( left: 20, top: 60),
              child: Align(
                alignment: Alignment.centerLeft,
                child: RaisedButton(
                  onPressed: () {},
                  child: Text( 'kembali' ),
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      'Sukses Checkout'
                    ),
                    RichText(
                      text: new TextSpan(
                        // Note: Styles for TextSpans must be explicitly defined.
                        // Child text spans will inherit styles from parent
                        style: new TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          new TextSpan(text: 'Silahkan transfer pada rekening '),
                          new TextSpan(text: 'Bank BRI Nomer Rekening : 322113-821312-123 ', style: new TextStyle(fontWeight: FontWeight.bold)),
                          new TextSpan(text: 'dengan nominal '),
                          new TextSpan(text: (totalHarga + kodeUnik).toIdr(), style: new TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
            Container(
              child: Card(
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    children: [
                      Text(
                        'Detail Pemesanan',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Row(
                        children: [
                          Flexible(
                            flex: 2,
                            child: Container(
                              height: 100,
                              width: 100,
                              child: Image(
                                image: NetworkImage(
                                  'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//87/MTA-7172331/whale_whale_fins_sepatu_katak_diving_snorkeling_full09_ft9phsah.jpg',
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    'Sepatu Katak super bisa membantu memfokuskan chakra',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 5),
                                  child: Text(
                                    '1 pasang',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    150000.toIdr(),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 20,
                        endIndent: 20,
                      ),
                      Row(
                        children: [
                          Flexible(
                            flex: 2,
                            child: Container(
                              height: 100,
                              width: 100,
                              child: Image(
                                image: NetworkImage(
                                  'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//87/MTA-7172331/whale_whale_fins_sepatu_katak_diving_snorkeling_full09_ft9phsah.jpg',
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    'Sepatu Katak super bisa membantu memfokuskan chakra',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 5),
                                  child: Text(
                                    '1 pasang',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    150000.toIdr(),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 20,
                        endIndent: 20,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Flexible(
                                flex: 1,
                                child: Container(),
                              ),
                              Flexible(
                                flex: 1,
                                child: Container(
                                  child: Center(
                                    child: Text(
                                      'Total Harga'
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: Container(
                                  child: RichText(
                                    text: new TextSpan(
                                      // Note: Styles for TextSpans must be explicitly defined.
                                      // Child text spans will inherit styles from parent
                                      style: new TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.black,
                                      ),
                                      children: <TextSpan>[
                                        new TextSpan(text: ': '),
                                        new TextSpan(text: totalHarga.toIdr(), style: new TextStyle(fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ),
                                )
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Flexible(
                                flex: 1,
                                child: Container(),
                              ),
                              Flexible(
                                flex: 1,
                                child: Container(
                                  child: Center(
                                    child: Text(
                                      'Kode Unik'
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: Container(
                                  child: RichText(
                                    text: new TextSpan(
                                      // Note: Styles for TextSpans must be explicitly defined.
                                      // Child text spans will inherit styles from parent
                                      style: new TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.black,
                                      ),
                                      children: <TextSpan>[
                                        new TextSpan(text: ': '),
                                        new TextSpan(text: kodeUnik.toIdr(), style: new TextStyle(fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ),
                                )
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Flexible(
                                flex: 1,
                                child: Container(),
                              ),
                              Flexible(
                                flex: 1,
                                child: Container(
                                  child: Center(
                                    child: Text(
                                      'Total Bayar'
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: Container(
                                  child: RichText(
                                    text: new TextSpan(
                                      // Note: Styles for TextSpans must be explicitly defined.
                                      // Child text spans will inherit styles from parent
                                      style: new TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.black,
                                      ),
                                      children: <TextSpan>[
                                        new TextSpan(text: ': '),
                                        new TextSpan(text: (totalHarga + kodeUnik).toIdr(), style: new TextStyle(fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ),
                                )
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}