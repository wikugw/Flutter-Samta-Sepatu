part of 'widgets.dart';

class ProductCard extends StatelessWidget {
  final String title, description;
  final int price;
  final void Function() onCLickState;

  ProductCard({this.title, this.description,this.price, this.onCLickState});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          onCLickState();
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Image.network(
                    'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//87/MTA-7172331/whale_whale_fins_sepatu_katak_diving_snorkeling_full09_ft9phsah.jpg'),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                child: Text(title, style: blackFonts),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                child: Text(price.toIdr()),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  description,
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
