part of 'widgets.dart';

class ProductCard extends StatelessWidget {
  final String title, description, image;
  final int price;
  final void Function() onCLickState;

  ProductCard(
      {this.title,
      this.description,
      this.price,
      this.onCLickState,
      this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          onCLickState();
        },
        child: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 160,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image:
                            AssetImage("assets/shoes_default.png"),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 160,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image:
                            NetworkImage(image),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  title,
                  style: blackFonts.copyWith(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                child: Text(price.toIdr()),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 7),
                  child: Text(
                    description,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
