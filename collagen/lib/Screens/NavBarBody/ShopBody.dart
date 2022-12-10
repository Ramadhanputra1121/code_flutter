import 'package:flutter/material.dart';

class ShopBody extends StatefulWidget {
  const ShopBody({super.key});

  @override
  _ShopBody createState() => _ShopBody();
}

class _ShopBody extends State<ShopBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          itemCount: 6,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 8.0 / 10.0,
            crossAxisCount: 2,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
                padding: EdgeInsets.all(5),
                child: Card(
                    semanticContainer: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                            child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/Market.png'),
                                fit: BoxFit.fill),
                          ),
                        )),
                        Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Rp. 9000 ",
                              style: TextStyle(fontSize: 18.0),
                            )),
                        Text(
                          "Ayam Jago + Kandang",
                          style: TextStyle(fontSize: 18.0),
                        )
                      ],
                    )));
          }),
    );
  }
}
