import 'package:flutter/material.dart';
//
import 'package:validacionform/src/bloc/provider.dart';
import 'package:validacionform/src/pages/home_page.dart';
import 'package:validacionform/src/pages/login_page.dart';



void main() => runApp(MyApp());




class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
///[Provider]
    return Provider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'login',
        routes: {
          'login'   : (BuildContext contex) => LoginPage(),
          'home'    : (BuildContext contex) => HomePage(),
        },
        theme: ThemeData(
          primaryColor: Colors.deepPurple
        ),
      ),
    );
  }
}

