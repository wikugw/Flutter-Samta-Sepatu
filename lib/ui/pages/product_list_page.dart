part of 'pages.dart';

class ProductListPage extends StatefulWidget {
  @override
  _ProductListPageState createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {

  
  @override
  Widget build(BuildContext context) {

  double height = MediaQuery.of(context).size.height;
  var appBarHeight = height * 0.07;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: appBarHeight),
              child: ListView(
                children: [
                  GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    childAspectRatio: (3 / 5),
                    physics: NeverScrollableScrollPhysics(),
                    children: List.generate(9, (index) {
                      return ProductCard(
                        title: "Kaki Kodok",
                        description:
                            "Ini Kaki kodok, biasa digunakan oleh penyelam profesional",
                        price: 150000,
                        onCLickState: () {
                          // Go To detail product page
                        },
                      );
                    }),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: appBarHeight,
                margin: EdgeInsetsDirectional.only(bottom: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(bottom: BorderSide(color: Colors.black))),
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Container(
                        decoration: BoxDecoration(
                            border:
                                Border(right: BorderSide(color: Colors.black))),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: IconButton(
                            icon: Icon(Icons.sort),
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
            ),
          ],
        ),
      ),
    );
  }
}
