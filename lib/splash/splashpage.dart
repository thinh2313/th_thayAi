import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:nguyenminhthinh_18dh110441/signin/signinpage.dart';

class SplashPage extends StatelessWidget {
  static String routeName = "/";
  @override
  Widget build(BuildContext context) {
    new Future.delayed(new Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(
          context, Signin.routeName, (Route<dynamic> route) => false);
    });
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                backgroundColor: Colors.white,
                strokeWidth: 5,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Loading...',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
