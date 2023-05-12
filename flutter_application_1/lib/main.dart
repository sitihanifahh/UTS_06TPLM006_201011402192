import 'package:flutter/material.dart';

void main() {
  runApp(MyApps());
}

class MyApps extends StatelessWidget {
  const MyApps({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(appBarTheme: AppBarTheme(color: Colors.white)),
      debugShowCheckedModeBanner: false,
      home: MyHomePages(),
      title: 'Siti Hanifah UTS MOBILE PROGRAMING',
    );
  }
}

class MyHomePages extends StatefulWidget {
  const MyHomePages({super.key});

  @override
  State<MyHomePages> createState() => _MyHomePagesState();
}

class _MyHomePagesState extends State<MyHomePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(246, 250, 5, 250),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 30.0),
                    child: Text('Shoes',
                        style: TextStyle(
                            fontSize: 50.0, fontWeight: FontWeight.bold)),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(right: 20.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/p.jpg'),
                      radius: 30.0,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  SizedBox(height: 30),
                  CardShoes(
                      titleProduct: 'Converse Chuck Taylor 70s High',
                      subTitle: '',
                      cost: '1.000.000',
                      Color: Color.fromRGBO(209, 197, 234, 0.835),
                      linkProduct: 'assets/images/adidas1.png'),
                  CardShoes(
                      titleProduct: 'Adidas Yeezy Boost SPLY 350 V2 Black',
                      subTitle: 'Men’s Rood Running Shoes',
                      cost: '700.000',
                      Color: Color.fromRGBO(184, 212, 209, 0.835),
                      linkProduct: 'assets/images/adidas2.png'),
                  CardShoes(
                      titleProduct: 'Nike Flex Experience RN 3 MSL',
                      subTitle: 'Men’s Rood Racing Shoes',
                      cost: '700.000',
                      Color: Color.fromRGBO(178, 171, 169, 0.835),
                      linkProduct: 'assets/images/adidas3.png'),
                  CardShoes(
                      titleProduct: 'Adidas Revenge Boost',
                      subTitle: 'Older Kids’ Shoes',
                      cost: '800.000',
                      Color: Color.fromRGBO(233, 233, 233, 0.835),
                      linkProduct: 'assets/images/adidas4.png'),
                  CardShoes(
                      titleProduct: 'Adidas Revenge Boost',
                      subTitle: 'Older Kids’ Shoes',
                      cost: '600.000',
                      Color: Color.fromRGBO(252, 242, 180, 0.835),
                      linkProduct: 'assets/images/adidas5.png'),
                ],
              ),
            ),
          ],
        ));
  }
}

class CardShoes extends StatelessWidget {
  CardShoes(
      {required this.titleProduct,
      required this.cost,
      required this.linkProduct,
      required this.Color,
      required this.subTitle});

  final String titleProduct;
  final String cost;
  final String linkProduct;
  final Color;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      //Card
      height: 170,
      width: double.infinity,
      margin: EdgeInsets.all(12),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.grey,
              blurRadius: 12,
              offset: Offset.fromDirection(25)),
        ],
        color: Color,
        borderRadius: BorderRadius.circular(60),
      ),
      child: Column(
        children: [
          Container(
            // color: Colors.green[200],
            height: 110,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Container(
                    margin: EdgeInsets.only(left: 20, top: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          titleProduct, //judul product
                          overflow: TextOverflow.ellipsis,
                          maxLines: 4,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          subTitle, //desk product
                          overflow: TextOverflow.ellipsis,
                          maxLines: 4,
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "IDR. ${cost}", //harga product
                          overflow: TextOverflow.ellipsis,
                          maxLines: 4,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Image.network(
                      '${linkProduct}',
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
