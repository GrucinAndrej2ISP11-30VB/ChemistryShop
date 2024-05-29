import 'package:flutter/material.dart';
import 'package:marketplace/classes/account.dart';
import 'package:marketplace/classes/bucket.dart';
import 'package:marketplace/classes/fav.dart';
import 'package:marketplace/classes/log.dart';
import 'package:marketplace/classes/product.dart';
import 'package:marketplace/components/strings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ozol',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade900),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  static int ind1 = 0;
  static int ind2 = 0;

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<String> search = ValueNotifier('');
    //---------
    //Заголовок
    //---------
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(0),
              ),
              const Text("Ozol"),

              //-----------
              //Окно поиска
              //-----------

              SizedBox(
                width: 230,
                height: 70,
                child: Padding(
                  padding: const EdgeInsets.all(7),
                  child: TextField(
                    onChanged: (value) {
                      search.value = value;
                    },
                    decoration: InputDecoration(
                      labelText: 'Поиск...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                    style: const TextStyle(fontSize: 14),
                  ),
                ),
              ),

            //---------------------------
            //Переход к списку избранного
            //---------------------------

              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Favorite()));

                },
                child: const Padding(
                  padding: EdgeInsets.all(7),
                  child: Icon(
                    Icons.favorite,
                    size: 30.0,
                      color: Color (0xFFFF4462),
                  ),
                ),
              ),
              const Text(" - Избранное"),

              //---------------------------
              //Аккаунт (регистрация/логин)
              //---------------------------

              GestureDetector(
                onTap: () {
                  if (AccountInfo.isAuth == false) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Login()));
                  } else {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Account()));
                  }
                },
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(
                    Icons.account_circle_outlined,
                    size: 30.0,
                    color: Color (0xFF145FFF),
                  ),
                ),
              ),

              //-------
              //Корзина
              //-------

              const Text(" - Ваш аккаунт"),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Bucket()));
                },
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(
                    Icons.shopping_cart_checkout_rounded,
                    size: 30.0,
                    color: Color (0xFF565656),
                  ),
                ),
              ),
              const Text(" - Корзина"),
            ],
          ),
        ),
      ),
      body: Center(
        child: ValueListenableBuilder<String>(
          valueListenable: search,
          builder: (context, searchText, child) {
            final filteredProducts = products.where((product) {
              return product.name
                  .toLowerCase()
                  .contains(searchText.toLowerCase());
            }
            ).
            toList();
            return GridView.builder(
              itemCount: filteredProducts.length,
              itemBuilder: (context, index) {
                return Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    InkWell(
                      onTap: () {
                        ind1 = index * 3;
                        ind2 = index;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Product()),
                        );
                      },

                      //----------------
                      //Карточки товаров
                      //----------------

                      child: Container(
                        width: 230,
                        height: 430,
                          margin: const EdgeInsets.all(25),
                          padding: const EdgeInsets.all(25),
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

                        child: Column(
                          children: [
                            Image.network(
                              filteredProducts[index].photo,
                              width: 100,
                              height: 100,
                            ),

                            Text(filteredProducts[index].cost,
                                textAlign: TextAlign.right,
                                style: const TextStyle(
                                  shadows: <Shadow>[
                                    Shadow(
                                      offset: Offset(0.0, 2.0),
                                      blurRadius: 2.0,
                                      color: Color (0xFFE7E7E7),
                                    )
                                  ],
                                    fontSize: 20,
                                    color: Color (0xFF7E9DFF),
                                    fontWeight: FontWeight.bold)),

                            SizedBox(
                              width: 200,
                              child: Text(
                                filteredProducts[index].name,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontSize: 20,
                                    color:  Color (0xFF000000),
                                    fontWeight: FontWeight.bold),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Text(filteredProducts[index].shortdesc,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontSize: 14, color: Color (0xFF5B5B5B))),

                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },

              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 300,
                childAspectRatio: 0.6,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,

              ),
            );
          },
        ),
      ),
    );
  }
}
