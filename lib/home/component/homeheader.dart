import 'package:flutter/material.dart';
import 'package:nguyenminhthinh_18dh110441/cart/cartpage.dart';
import 'package:nguyenminhthinh_18dh110441/search/searchpage.dart';

class HomeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Search product",
                prefixIcon: Icon(Icons.search)),
            onTap:() {Navigator.pushNamed(context, SearchPage.routeName);},

          ),


        ),
        SizedBox(
          child: GestureDetector(
            onTap:() { Navigator.pushNamed(context, CartPage.routeName);  },
            child: Container(
                height: 40,
                width: 40,
                padding: EdgeInsets.all(10),
                child: Icon(Icons.shopping_cart_outlined)),

          ),
        )

      ],
    );
  }
}
// Navigator.pushNamed(context, CartPage.routeName);
