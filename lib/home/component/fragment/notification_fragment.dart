import 'package:flutter/material.dart';
import 'package:nguyenminhthinh_18dh110441/model/products.dart';

class NotificationFrag extends StatelessWidget {



  List<Products> _userDetails = [];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
    itemCount: _userDetails.length,
    itemBuilder: (context, index)
    {
      return new Card(
        child: new ListTile(
          leading: Image.asset(_userDetails[index].image),
          title: new Text(
              _userDetails[index].title + ' ' + _userDetails[index].title),
        ),
        margin: const EdgeInsets.all(0.0),

      );
    }
    );
}
}
