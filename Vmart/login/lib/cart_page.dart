import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  static String tag = 'CartPage';
  final Map product;

  CartPage({required this.product});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     Navigator.push(
        //         context, MaterialPageRoute(builder: (context) => AddProduct()));
        //   },
        //   child: Icon(Icons.add),
        // ),
        appBar: AppBar(
          title: Text('Vmart'),
          backgroundColor: Colors.green,
        ),
        body: FutureBuilder(
            //future: getProducts(),
            builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: snapshot.data['data'].length,
                itemBuilder: (context, index) {
                  return Container(
                    width: MediaQuery.of(context).size.width / 8,
                    height: MediaQuery.of(context).size.width / 2.5,
                    child: Card(
                      elevation: 5,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CartPage(
                                            product: snapshot.data['data']
                                                [index],
                                          )));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0)),
                              padding: EdgeInsets.all(10),
                              height: 100,
                              width: 100,
                              child: Image.network(
                                product['picture_name'],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(10.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(product['name'],
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(product['description']),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      //Row(
                                      //  children: [
                                      //   GestureDetector(
                                      //       onTap: () {
                                      //         Navigator.push(
                                      //             context,
                                      //             MaterialPageRoute(
                                      //                 builder: (context) =>
                                      //                     CartPage(
                                      //                       product: snapshot
                                      //                                   .data[
                                      //                               'data']
                                      //                           [index],
                                      //                     )));
                                      //       },
                                      //       child: Icon(Icons.shopping_cart)),
                                      //   GestureDetector(
                                      //       onTap: () {
                                      //         Navigator.push(
                                      //             context,
                                      //             MaterialPageRoute(
                                      //                 builder: (context) =>
                                      //                     CartPage(
                                      //                       product: snapshot
                                      //                                   .data[
                                      //                               'data']
                                      //                           [index],
                                      //                     )));
                                      //       },
                                      //       child: Icon(Icons.share)),
                                      //   GestureDetector(
                                      //       onTap: () {
                                      //         Navigator.push(
                                      //             context,
                                      //             MaterialPageRoute(
                                      //                 builder: (context) =>
                                      //                     CartPage()));
                                      //       },
                                      //       child: Icon(Icons.favorite)),
                                      // ],
                                      //),
                                      Text(snapshot.data['data'][index]['price']
                                          .toString())
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                });
          } else {
            return Text('Data error');
          }
        }));
  }
}
