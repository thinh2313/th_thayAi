import 'package:flutter/material.dart';
import 'package:nguyenminhthinh_18dh110441/category/component/category_detail.dart';


class Body extends StatelessWidget {
  int idcate;
  Body(this.idcate, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: CategoryDetail(idcate));
  }

}