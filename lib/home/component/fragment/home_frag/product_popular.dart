import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nguyenminhthinh_18dh110441/model/products.dart';
import 'package:nguyenminhthinh_18dh110441/model/utilities.dart';

import '../../../../detail/productpage.dart';

class ProductPopular extends StatelessWidget {
  final products = Products.init();

  @override
  Widget build(BuildContext context) {
    var productsAPI = Utilities().getProducts();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            children: [
              Expanded(
                  child: Text(
                'Popular Products ',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlueAccent),
              )),
              Text(
                'See more',
                style: TextStyle(fontSize: 16, color: Colors.lightBlue),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  primary: false,
                  itemCount: products.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 0.7),
                  itemBuilder: (context, index) {
                    return ProductItem(
                      product: products[index],
                    );
                  })
                  ),
        ],
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  Products product;

  ProductItem({ this.product});

  @override
  Widget build(BuildContext context) {
    if(product.image != null){

    }
    return GestureDetector(
      onTap: () {
        //print(product.id.toString());
        Utilities.data.add(product);
        Navigator.pushNamed(context, ProductPage.routeName,arguments: ProductDetailsArguments(product: product));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image.network('https://image.tmdb.org/t/p/w500${movie?.backdropPath ?? movie?.posterPath ?? ''}'),
          Image.asset(product.image, fit: BoxFit.fill,height: 150,width: 150,),
          Row(
            children: [
              Expanded(child: Text(product.title)),
              Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(2),
                      color: Colors.green
                  ),
                  child: Text(product.price.toString(), style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),)),
            ],
          )
        ],
      ),
    );
  }
}
