import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nguyenminhthinh_18dh110441/cart/cartpage.dart';
import 'package:nguyenminhthinh_18dh110441/category/catepage.dart';
import 'package:nguyenminhthinh_18dh110441/detail/productpage.dart';
import 'package:nguyenminhthinh_18dh110441/home/homepage.dart';
import 'package:nguyenminhthinh_18dh110441/search/searchpage.dart';
import 'package:nguyenminhthinh_18dh110441/signin/signinpage.dart';
import 'package:nguyenminhthinh_18dh110441/signup/signuppage.dart';
import 'package:nguyenminhthinh_18dh110441/splash/splashpage.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
      '/': (context) => SplashPage(),
        '/search_screen':(context)=>SearchPage(),
      '/sign_in': (context) => Signin(),
      '/sign_up': (context) => SignupPage(),
      '/home_screen': (context) => HomePage(),
        '/details':(context)=>ProductPage(),
        '/carts':(context)=>CartPage(),
        '/categoryDetail':(context)=>CategoryPage()
    });
  }
}
