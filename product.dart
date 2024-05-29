import 'package:marketplace/classes/home.dart';
import 'package:marketplace/classes/bucket.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:marketplace/components/strings.dart';
import 'fav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marketplace Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade900),
        useMaterial3: true,
      ),
      home: const Product(),
    );
  }
}

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {

    final int count = Home.ind1;
    final int ind = Home.ind2;

    //--------------------------
    //Содержимое карточки товара
    //--------------------------

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: const Text("Ozol"),
      ),
      body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Column(
              children:[
                CarouselSlider(
                  options: CarouselOptions(height: 400.0),
                  items: [count,1+count,2+count,].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Image.network(photos[i])
                          );
                        },
                      );
                    }
                  ).toList(),
                ),

                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    products[ind].cost,
                    style: const TextStyle(fontSize: 20, color: Color (0xFF7E9DFF), fontWeight: FontWeight.bold),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Text(
                    products[ind].name,
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),

                Padding(
                    padding: const EdgeInsets.all(30),
                  child: Text(
                    products[ind].desc,
                    style: const TextStyle(fontSize: 17),
                  ),
                ),

                //--------------------
                //Добавление в корзину
                //--------------------

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Padding(
                        padding: const EdgeInsets.all(15),
                        child:
                          ElevatedButton(
                            onPressed: (){ Bucket.addItem(products[ind].id, ind, products[ind].name, products[ind].cost, products[ind].photo);
                              },

                              child: const Text("Добавить в корзину",
                                  style: TextStyle(fontSize: 30),
                          ),
                       )
                    ),

                    //----------------------
                    //Добавление в избранное
                    //----------------------

                    Padding(
                        padding: const EdgeInsets.all(15),
                        child:
                        ElevatedButton(
                          onPressed: (){ Favorite.addItem(products[ind].id, ind, products[ind].name, products[ind].cost, products[ind].photo);
                            },

                          child: const Text("Добавить в избранное",
                            style: TextStyle(fontSize: 30),
                          ),
                        )
                    )
                  ],
                )
              ],
            );
          }
      ),
    );
  }
}