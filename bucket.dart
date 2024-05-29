import 'package:flutter/material.dart';
import 'home.dart';
import '../components/strings.dart';
import 'package:marketplace/classes/product.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marketplace Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade900),
      ),

      home: Bucket(),
    );
  }
}

class Bucket extends StatefulWidget {
  const Bucket({Key? key}) : super(key: key);
  static List<CartStrings> cart = [];
  static void addItem(
      int id, int oldid, String name, String cost, String photo) {
    cart.add(CartStrings(id, oldid, name, cost, photo));
  }

  @override
  _BucketState createState() => _BucketState();
}

//---------
//Заголовок
//---------

class _BucketState extends State<Bucket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade300,
        title: const Text('Корзина'),
      ),

      body: ListView.builder(
        itemCount: Bucket.cart.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              Home.ind1 = Bucket.cart[index].oldid * 5;
              Home.ind2 = Bucket.cart[index].oldid;
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Product()));
            },

            child: Container(
              width: 100,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xFF889CB0),
                    blurRadius: 10,
                    offset: Offset(0, 0),
                  ),
                ],
              ),

              child: Row(
                children: [
                  Image.network(
                    Bucket.cart[index].photo,
                    width: 100,
                    height: 100,
                  ),

                  Column(
                    children: [
                      SizedBox(
                        width: 200,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            Bucket.cart[index].name,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            overflow: TextOverflow.ellipsis,
                          ),
                        )
                      ),

                      //----------------------------
                      //Отображение товара в корзине
                      //----------------------------

                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          Bucket.cart[index].cost,
                          style: const TextStyle(
                              fontSize: 24,
                              color: Color (0xFF7E9DFF),
                              fontWeight: FontWeight.bold),
                        ),
                      ),

                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                Bucket.cart[index].quantity--;
                                }
                              );
                            },

                            //---------------------------------
                            //Уменьшить кол-во товара в корзине
                            //---------------------------------

                            icon: const Icon(Icons.remove),
                          ),

                          Text(
                            '${Bucket.cart[index].quantity}',
                            style: const TextStyle(fontSize: 20),
                          ),

                          //---------------------------------
                          //Увеличить кол-во товара в корзине
                          //---------------------------------

                          IconButton(
                            onPressed: () {
                              setState(() {
                                Bucket.cart[index].quantity++;
                                }
                              );
                            },

                            icon: const Icon(Icons.add),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
