import 'package:flutter/material.dart';
import 'package:marketplace/classes/home.dart';
import 'package:marketplace/classes/reg.dart';
import 'package:marketplace/components/strings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Логин',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade900),
        useMaterial3: true,
      ),
      home: const Login(),
    );
  }
}

//---------
//Заголовок
//---------

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Регистрация/Логин"),
      ),

      //-----------
      //Окно логина
      //-----------

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 500,
              width: 400,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                color: const Color (0xFFFFFFFF),
                boxShadow: const[
                  BoxShadow(
                    color: Color(0xFF889CB0),
                    blurRadius: 10,
                    offset: Offset(0, 0),
                  ),
                ],
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(padding: EdgeInsets.all(10),
                    child: Text("Логин",
                      style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                    ),
                  ),

                  Padding(padding: const EdgeInsets.all(40),
                    child: TextField(
                      decoration: InputDecoration
                        (border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                          enabledBorder: OutlineInputBorder
                            (borderSide: const BorderSide(width: 2.5, color: Color(0xFFAAC8E3)),
                              borderRadius: BorderRadius.circular(15)),
                              labelText: "Электронная почта", suffixIcon: const Icon(Icons.supervised_user_circle,
                              color: Color (0xFF5A8CCE),
                            )
                          ),
                        ),
                      ),

                  //------
                  //Пароль
                  //------

                  Padding(padding: const EdgeInsets.all(10),
                    child: TextField(
                      decoration: InputDecoration
                        (border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                          enabledBorder: OutlineInputBorder
                            (borderSide: const BorderSide(width: 2.5, color: Color(0xFFAAC8E3)),
                              borderRadius: BorderRadius.circular(15)),
                                labelText: "Пароль", suffixIcon: const Icon(Icons.numbers,
                                color: Color (0xFF5A8CCE),
                              )
                            ),
                          ),
                        ),

                  //------------
                  //Кнопка входа
                  //------------

                  Padding(padding: EdgeInsets.all(25),
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>  Home()));
                        AccountInfo.isAuth = true;
                        },
                      style: ElevatedButton.styleFrom
                        (backgroundColor: Color (0xFF5A8CCE),
                      ),
                      child: const Padding(padding: EdgeInsets.all(10),
                        child: Text("Войти",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    ),
                  ),

                  //------------------
                  //Кнопка регистрации
                  //------------------

                  Padding(padding: EdgeInsets.all(25),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom
                        (backgroundColor: Color (0xFF5A8CCE),
                      ),
                      child: const Text("Регистрация",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      onPressed: ()
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Registration()));

                        },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
