import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:nguyenminhthinh_18dh110441/home/component/fragment/favorite_fragment.dart';
import 'package:nguyenminhthinh_18dh110441/home/homepage.dart';
import 'package:nguyenminhthinh_18dh110441/model/products.dart';
import 'package:nguyenminhthinh_18dh110441/model/utilities.dart';
import 'package:flutter_tags/flutter_tags.dart';

class Body extends StatefulWidget {
  List<Products> dataProduct = <Products>[];
//  Body({this.dataProduct});
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  List<String> _tags = [];
  List<Products> products = Products.init();
  List<Products> productsResult = <Products>[];

  TextEditingController textEditingController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tags.addAll(['food', 'categories', 'bread','tea']);
    textEditingController = new TextEditingController();
  }

  Widget buildTag(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Recommend'),
          SizedBox(
            height: 10,
          ),
          Tags(
            itemCount: _tags.length,
            itemBuilder: (index) {
              // print(index.toString());
              return ItemTags(
                index: index,
                title: _tags[index],
                onPressed: (item) {
                  setState(() {
                    widget.dataProduct.clear();
                    widget.dataProduct.addAll(Utilities().find(item.title));
                  });
                },
              );
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: buildRow(),
        ),
        body: buildContainer(context));
  }

  Widget buildRow() {
    return Row(
      children: [
        SizedBox(
          child: GestureDetector(
            child: Icon(Icons.arrow_back),
          onTap: () {
            Navigator.pushNamed(context, HomePage.routeName);
          },)
        ),
        Expanded(
          child: TextField(
            controller: textEditingController,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Search product",
                prefixIcon: Icon(Icons.search)),
            onChanged:(value) {
              setState(() {
                if (value.isEmpty) {
                  widget.dataProduct = new List<Products>();
                  return;
                }
                widget.dataProduct.clear();
                widget.dataProduct.addAll(Utilities().find(value));
              });
            },
          ),
        ),
      ],
    );
  }

  Widget buildContainer(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          buildTag(context),
          if (widget.dataProduct.length == 0)
            Expanded(child: Center(child: Text('No item')))
          else
            Expanded(
                child: ListView.builder(
                    itemCount: widget.dataProduct.length,
                    itemBuilder: (context, index) {
                      return ProductItemList(
                        product: widget.dataProduct[index],
                      );
                    }))
        ],
      ),
    );
  }

  void searchproduct(String query){
    final suggestions = products.where((product) {
    final protitle = product.title.toLowerCase();
    final input = query.toLowerCase();
    return protitle.contains(input);
  }).toList();}
}
