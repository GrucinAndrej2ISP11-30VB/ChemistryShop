import 'package:flutter/material.dart';
import 'package:marketplace/components/strings.dart';
import 'package:marketplace/classes/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Регистрация',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade900),
        useMaterial3: true,
      ),
      home: const Registration(),
    );
  }
}

//----------
//Переменные
//----------

class Registration extends StatelessWidget {
  const Registration({super.key});

  static String firstName = "";
  static String lastName = "";
  static String email = "";
  static String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Регистрация/Логин"
        ),
      ),

      //----------------
      //Окно регистрации
      //----------------

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 500,
              width: 400,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.white,
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
                    child: Text("Регистрация",
                      style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                    ),
                  ),

                  Padding(padding: const EdgeInsets.all(10),
                    child: TextField(
                      onChanged: (value) {firstName = value;
                        },
                      decoration: InputDecoration
                        (border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                          enabledBorder: OutlineInputBorder
                            (borderSide: const BorderSide(width: 2, color: Color (0xFFAAC8E3)),
                              borderRadius: BorderRadius.circular(15)),
                                labelText: "Имя", suffixIcon: const Icon(Icons.abc_rounded,
                                  size: 30,
                                  color: Color (0xFFAAC8E3),
                              )),
                            ),
                          ),

                  Padding(padding: const EdgeInsets.all(10),
                    child: TextField(
                      onChanged: (value) {lastName = value;
                        },
                      decoration: InputDecoration
                        (border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                          enabledBorder: OutlineInputBorder
                            (borderSide: const BorderSide(width: 2, color: Color(0xFFAAC8E3)),
                              borderRadius: BorderRadius.circular(15)),
                              labelText: "Фамилия", suffixIcon: const Icon(Icons.abc_rounded,
                                size: 30,
                                color: Color (0xFFAAC8E3),
                              )),
                            ),
                          ),

                  Padding(padding: const EdgeInsets.all(10),
                    child: TextField(
                      onChanged: (value) {email = value;
                        },
                      decoration: InputDecoration
                        (border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                          enabledBorder: OutlineInputBorder
                            (borderSide: const BorderSide(width: 2, color: Color(0xFFAAC8E3)),
                              borderRadius: BorderRadius.circular(15)),
                                labelText: "Электронная почта", suffixIcon: const Icon(Icons.email_outlined,
                                  size: 24,
                                  color: Color (0xFFAAC8E3),
                              )),
                            ),
                          ),

                  Padding(padding: const EdgeInsets.all(10),
                    child: TextField(
                      onChanged: (value) {password = value;
                        },
                      decoration: InputDecoration
                        (border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                          enabledBorder: OutlineInputBorder(borderSide: const BorderSide(width: 2, color: Color(0xFFAAC8E3)),
                              borderRadius: BorderRadius.circular(15)),
                                labelText: "Пароль", suffixIcon: const Icon(Icons.numbers_rounded,
                                  size: 24,
                                  color: Color (0xFFAAC8E3),
                              )),
                            ),
                          ),

                  Padding(padding: const EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>  const Home()));
                        AccountInfo.lastName = lastName;
                        AccountInfo.name = firstName;
                        AccountInfo.email = email;
                        AccountInfo.password = password;
                        AccountInfo.isAuth = true;
                        },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color (0xFF5A8CCE)),
                          child: const Padding(padding: EdgeInsets.all(15),
                            child: Text("Войти",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                    ),

                  Padding(padding: const EdgeInsets.all(15),
                    child: ElevatedButton(
                      onPressed: ()
                      {Navigator.pop(context);
                        },
                      style: ElevatedButton.styleFrom(backgroundColor: const Color (0xFF5A8CCE)),
                      child: const Text("Логин",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
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