part of 'pages.dart';

class CheckoutListPage extends StatefulWidget {
  @override
  _CheckoutListPageState createState() => _CheckoutListPageState();
}

class _CheckoutListPageState extends State<CheckoutListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // --------------------------------------------- //
            // tombol kembali                                //
            // --------------------------------------------- //
            Container(
              margin: EdgeInsets.only( left: 20, top: 60),
              child: RaisedButton(
                onPressed: () {},
                child: Text( 'kembali' ),
              ),
            ),
            Container(
              child: Card(
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    children: [
                      Text(
                        'Checkout',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Table(
                        children: [
                          TableRow(
                            children: [
                              Center(child: Text('Gambar')),
                              Center(child: Text('Nama Barang')),
                              Center(child: Text('Jumlah',textAlign: TextAlign.center)),
                              Center(child: Text('Harga')),
                              Center(child: Text('Total')),
                              Center(child: Text('Aksi')),
                            ]
                          ),
                          TableRow(
                            children: [
                              Image(
                                image: NetworkImage(
                                  'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//87/MTA-7172331/whale_whale_fins_sepatu_katak_diving_snorkeling_full09_ft9phsah.jpg'
                                ),
                              ),
                              Center(child: Text('Nama Barang')),
                              Center(child: Text('Jumlah',textAlign: TextAlign.center)),
                              Center(child: Text('Harga')),
                              Center(child: Text('Total')),
                              Center(child: Text('Aksi')),
                            ]
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}