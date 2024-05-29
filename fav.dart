import 'package:flutter/material.dart';
import 'home.dart';
import '../components/strings.dart';
import 'package:marketplace/classes/product.dart';

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

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);
  static List<FavStrings> fav = [];
  static void addItem(int id, int oldid, String name, String cost, String photo) {
    fav.add(FavStrings(id, oldid, name, cost, photo));
  }

  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {

  //---------
  //Заголовок
  //---------

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade600,
        title: const Text('Избранное'),
      ),

      body: ListView.builder(
        itemCount: Favorite.fav.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              Home.ind1 = Favorite.fav[index].oldid * 5;
              Home.ind2 = Favorite.fav[index].oldid;
              Navigator.push(
                  context,
                  MaterialPageRoute(
                  builder: (context) => const Product()));
            },

            //--------------------------
            //Карточка избранного товара
            //--------------------------

            child: Container(
              width: 100,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color (0xFFFFFFFF),
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
                    Favorite.fav[index].photo,
                    width: 100,
                    height: 100,
                  ),

                  Column(
                    children: [
                      SizedBox(
                        width: 200,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            Favorite.fav[index].name,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            overflow: TextOverflow.ellipsis,
                          ),
                        )
                      ),

                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                            Favorite.fav[index].cost,
                            style: const TextStyle(
                                fontSize: 30,
                                color: Color (0xFF7E9DFF),
                                fontWeight: FontWeight.bold),

                        ),
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