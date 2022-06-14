import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'cart_page.dart';
import 'product_detail.dart';

class AllproductPage extends StatefulWidget {
  static String tag = 'AllproductPage';

  const AllproductPage({
    Key? key,
  }) : super(key: key);

  @override
  State<AllproductPage> createState() => _AllproductPageState();
}

class _AllproductPageState extends State<AllproductPage> {
<<<<<<< HEAD
  // final String url = "https://vmart.proyek.ti.polindra.ac.id/public/api/produk";
  final String url = "http://10.0.2.2:8000/api/produk";
=======
  final String url = "https://vmart.proyek.ti.polindra.ac.id/public/api/produk";
>>>>>>> 9961b839487701628b575714c44b4398f1379388
  @override
  initState() {
    super.initState();
    getProducts();
  }

  Future getProducts() async {
    var response = await http.get(Uri.parse(url));
    print(json.decode(response.body));
    return json.decode(response.body);
  }

  Future deleteProduct(String productId) async {
<<<<<<< HEAD
    // String url =
    //     "https://vmart.proyek.ti.polindra.ac.id/public/api/produk/" + productId;
    String url =
        "http://10.0.2.2:8000/api/produk/" + productId;
=======
    String url = "https://vmart.proyek.ti.polindra.ac.id/public/api/produk/" + productId;
>>>>>>> 9961b839487701628b575714c44b4398f1379388

    var response = await http.delete(Uri.parse(url));
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    getProducts();
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
            future: getProducts(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return GridView.builder(
                    //scrollDirection: Axis.vertical,

                    itemCount: snapshot.data['data'].length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return Container(
                        width: MediaQuery.of(context).size.width / 8,
                        height: MediaQuery.of(context).size.width / 2.5,
                        child: Card(
                          elevation: 5,
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ProductDetail(
                                                product: snapshot.data['data']
                                                    [index],
                                              )));
                                },
                                child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(15.0)),
                                    padding: EdgeInsets.all(10),
                                    height: 100,
                                    width: 100,
                                    child: Image(
                                        image: NetworkImage(
<<<<<<< HEAD
                                            // "https://vmart.proyek.ti.polindra.ac.id/public/storage/${snapshot.data['data'][index]['picture_name']}"
                                            "http://10.0.2.2:8000/storage/image/${snapshot.data['data'][index]['picture_name']}",
=======
                                            "https://vmart.proyek.ti.polindra.ac.id/public/storage/${snapshot.data['data'][index]['picture_name']}"
                                            // "http://10.0.2.2:8000/storage/image/${snapshot.data['data'][index]['picture_name']}",
>>>>>>> 9961b839487701628b575714c44b4398f1379388
                                            ))),
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
                                        child: Text(
                                            snapshot.data['data'][index]
                                                ['name'],
                                            style: TextStyle(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                      // Flexible(
                                      //   child: Align(
                                      //     alignment: Alignment.topLeft,
                                      //     child: Text(snapshot.data['data']
                                      //         [index]['description']),
                                      //   ),
                                      // ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Rp.' +
                                              snapshot.data['data'][index]
                                                      ['price']
                                                  .toString()),
                                          Text(snapshot.data['data'][index]
                                                      ['is_available']
                                                  .toString() +
                                              '/' +
                                              snapshot.data['data'][index]
                                                  ['product_unit']),
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
