import 'package:flutter/material.dart';
import 'package:nguyenminhthinh_18dh110441/signin/component/signin_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            headerScreen(context),
            SigninForm(),
            footerScreen(context),
          ],
        ),
      ),
    ));
  }

  Widget headerScreen(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.2,
      alignment: Alignment.bottomRight,
      child: Image.asset("assets/dish.png"),
    );
  }

  Widget footerScreen(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.bottomLeft,
      child: Image.asset("assets/dish_2.png"),
    );
  }
}
