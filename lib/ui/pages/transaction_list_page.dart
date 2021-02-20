part of 'pages.dart';

class TransactionListPage extends StatefulWidget {
  @override
  _TransactionListPageState createState() => _TransactionListPageState();
}

class _TransactionListPageState extends State<TransactionListPage> {
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
            // --------------------------------------------- //
            // tampilan list transaksi                       //
            // --------------------------------------------- //
            Container(
              height: 100,
              child: Card(
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Text(
                          '12-12 \n 2021', 
                          textAlign: TextAlign.center
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Center(
                        child: Text(
                          'Sudah Pesan & Belum Bayar',
                          textAlign: TextAlign.center
                        )
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: Text(250878.toIdr()),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.only(right: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blueAccent
                          ),
                          child: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.launch),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ),
            ),
            // --------------------------------------------- //
            // tampilan list transaksi                       //
            // --------------------------------------------- //
            Container(
              height: 100,
              child: Card(
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Text(
                          '12-12 \n 2021', 
                          textAlign: TextAlign.center
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Center(
                        child: Text(
                          'Sudah Pesan & Belum Bayar',
                          textAlign: TextAlign.center
                        )
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: Text(250878.toIdr()),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.only(right: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blueAccent
                          ),
                          child: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.launch),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ),
            ),
            // --------------------------------------------- //
            // tampilan list transaksi                       //
            // --------------------------------------------- //
            Container(
              height: 100,
              child: Card(
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Text(
                          '12-12 \n 2021', 
                          textAlign: TextAlign.center
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Center(
                        child: Text(
                          'Sudah Pesan & Belum Bayar',
                          textAlign: TextAlign.center
                        )
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: Text(250878.toIdr()),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.only(right: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blueAccent
                          ),
                          child: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.launch),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ),
            ),
            // --------------------------------------------- //
            // tampilan list transaksi                       //
            // --------------------------------------------- //
            Container(
              height: 100,
              child: Card(
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Text(
                          '12-12 \n 2021', 
                          textAlign: TextAlign.center
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Center(
                        child: Text(
                          'Sudah Pesan & Belum Bayar',
                          textAlign: TextAlign.center
                        )
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: Text(250878.toIdr()),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.only(right: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blueAccent
                          ),
                          child: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.launch),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ),
            ),
            // --------------------------------------------- //
            // tampilan list transaksi                       //
            // --------------------------------------------- //
            Container(
              height: 100,
              child: Card(
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Text(
                          '12-12 \n 2021', 
                          textAlign: TextAlign.center
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Center(
                        child: Text(
                          'Sudah Pesan & Belum Bayar',
                          textAlign: TextAlign.center
                        )
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: Text(250878.toIdr()),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.only(right: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blueAccent
                          ),
                          child: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.launch),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ),
            ),
            // --------------------------------------------- //
            // tampilan list transaksi                       //
            // --------------------------------------------- //
            Container(
              height: 100,
              child: Card(
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Text(
                          '12-12 \n 2021', 
                          textAlign: TextAlign.center
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Center(
                        child: Text(
                          'Sudah Pesan & Belum Bayar',
                          textAlign: TextAlign.center
                        )
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: Text(250878.toIdr()),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.only(right: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blueAccent
                          ),
                          child: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.launch),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ),
            ),
            // --------------------------------------------- //
            // tampilan list transaksi                       //
            // --------------------------------------------- //
            Container(
              height: 100,
              child: Card(
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Text(
                          '12-12 \n 2021', 
                          textAlign: TextAlign.center
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Center(
                        child: Text(
                          'Sudah Pesan & Belum Bayar',
                          textAlign: TextAlign.center
                        )
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: Text(250878.toIdr()),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.only(right: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blueAccent
                          ),
                          child: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.launch),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ),
            ),
            // --------------------------------------------- //
            // tampilan list transaksi                       //
            // --------------------------------------------- //
            Container(
              height: 100,
              child: Card(
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Text(
                          '12-12 \n 2021', 
                          textAlign: TextAlign.center
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Center(
                        child: Text(
                          'Sudah Pesan & Belum Bayar',
                          textAlign: TextAlign.center
                        )
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: Text(250878.toIdr()),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.only(right: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blueAccent
                          ),
                          child: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.launch),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ),
            ),
            // --------------------------------------------- //
            // tampilan list transaksi                       //
            // --------------------------------------------- //
            Container(
              height: 100,
              child: Card(
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Text(
                          '12-12 \n 2021', 
                          textAlign: TextAlign.center
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Center(
                        child: Text(
                          'Sudah Pesan & Belum Bayar',
                          textAlign: TextAlign.center
                        )
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: Text(250878.toIdr()),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.only(right: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blueAccent
                          ),
                          child: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.launch),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ),
            ),
            // --------------------------------------------- //
            // tampilan list transaksi                       //
            // --------------------------------------------- //
            Container(
              height: 100,
              child: Card(
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Text(
                          '12-12 \n 2021', 
                          textAlign: TextAlign.center
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Center(
                        child: Text(
                          'Sudah Pesan & Belum Bayar',
                          textAlign: TextAlign.center
                        )
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: Text(250878.toIdr()),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.only(right: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blueAccent
                          ),
                          child: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.launch),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ),
            ),
            // --------------------------------------------- //
            // tampilan list transaksi                       //
            // --------------------------------------------- //
            Container(
              height: 100,
              child: Card(
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Text(
                          '12-12 \n 2021', 
                          textAlign: TextAlign.center
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Center(
                        child: Text(
                          'Sudah Pesan & Belum Bayar',
                          textAlign: TextAlign.center
                        )
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: Text(250878.toIdr()),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.only(right: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blueAccent
                          ),
                          child: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.launch),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ),
            ),
          ],
        )
      ),
    );
  }
}