import 'package:flutter/material.dart';
import 'package:marketplace/components/strings.dart';

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
      home: const Account(),
    );
  }
}

class Account extends StatelessWidget {
  const Account({super.key});

  static int ind = 0;

  //---------
  //Заголовок
  //---------

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
            "Аккаунт"
        ),
      ),

      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
        Container(
        width: MediaQuery.of(context).size.width * 0.35,
        height: 500,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Color(0xFF889CB0),
              blurRadius: 10,
              offset: Offset(0, 0),
            ),
          ],
        ),

        //----------------------
        //Информация об аккаунте
        //----------------------

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                AccountInfo.name,
                style: const TextStyle(fontSize: 50)
            ),

            Text(
                AccountInfo.lastName,
                style: const TextStyle(fontSize: 50),
            ),

            Text(
                AccountInfo.email,
                style: const TextStyle(fontSize: 50),
                  ),
                ],
              ),
            ),
          ]
        ),
      )
    );
  }
}