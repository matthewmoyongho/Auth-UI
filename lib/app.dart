import 'package:auth_ui/screens/home_screen.dart';
import 'package:auth_ui/screens/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget wrapper() {
      bool userLoggedIn = false;
      FirebaseAuth.instance.authStateChanges().listen((event) {
        if (event == null) {
          userLoggedIn = false;
        } else {
          userLoggedIn = true;
        }
      });
      return userLoggedIn ? HomeScreen() : Login();
    }

    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return HomeScreen();
            }
            return Login();
          }),
      //wrapper(),
      //FirebaseAuth.instance.authStateChanges.listen(User? user){
      //   if(user ==null){
      //     return Login();
      //   }else{
      //     return HomeScreen();
      //   }
      // },
    );
  }
}
