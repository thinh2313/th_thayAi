import 'package:flutter/material.dart';
import 'package:nguyenminhthinh_18dh110441/model/products.dart';
import 'package:nguyenminhthinh_18dh110441/model/utilities.dart';

import '../../detail/productpage.dart';


class CategoryDetail extends StatefulWidget {
  int id;
  CategoryDetail(this.id, {Key key}) : super(key: key);

  @override
  _CategoryDetailState createState() => _CategoryDetailState();
}

class _CategoryDetailState extends State<CategoryDetail> {
  @override
  Widget build(BuildContext context) {
    return buildListView(Utilities().getProductFromCate(widget.id));
  }
  ListView buildListView(List<Products> data) {
    print(data.toString());
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index){
        return ListTile(
          // leading: data[index].id != null ? Image.network('${Utilities.host}${data[index].image}'),
            leading: Image.asset(data[index].image,height: 60,width: 60,),
            title: Text(data[index].title),

            trailing: Text(data[index].price.toString()),
            onTap: () {
              var product;
              Navigator.pushNamed(context, ProductPage.routeName,
                  arguments: ProductDetailsArguments(product: product));
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Image.asset(product.image, fit: BoxFit.fill,),
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
              );
              //Navigator.pushNamed(context, ProductPage.routeName, arguments: ProductDetailsArguments(product: product));
            });


      },

    );
  }
}