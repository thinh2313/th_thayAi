import 'package:nguyenminhthinh_18dh110441/category/component/body.dart';
import 'package:flutter/material.dart';
import 'package:nguyenminhthinh_18dh110441/home/homepage.dart';



class CategoryPage extends StatelessWidget {
  static String routeName = "/categoryDetail";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, HomePage.routeName);
            },
            child: const Icon(Icons.arrow_back_ios),

          ),
          title: const Text("Category Details"),
        ),     body: Body(ModalRoute.of(context).settings.arguments as int)

    );
   }
}