import 'package:flutter/material.dart';
import 'package:nguyenminhthinh_18dh110441/home/component/fragment/account_fragment.dart';
import 'package:nguyenminhthinh_18dh110441/home/component/fragment/favorite_fragment.dart';
import 'package:nguyenminhthinh_18dh110441/home/component/fragment/home_fragment.dart';
import 'package:nguyenminhthinh_18dh110441/home/component/fragment/notification_fragment.dart';
import 'package:nguyenminhthinh_18dh110441/home/component/homeheader.dart';
import 'package:nguyenminhthinh_18dh110441/home/component/menuheader.dart';
import 'package:nguyenminhthinh_18dh110441/model/utilities.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  var selectIndex = 0;
  var flag = true;

  @override
  Widget build(BuildContext context) {
    List<Widget> screen = [
      HomeFrag(),
      FavoriteFrag(Utilities.data),
      NotificationFrag(),
      AccountFrag()
    ];

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title:flag? HomeHeader() :MenuHeader()
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectIndex,
        onTap: (index) {
          setState(() {
            selectIndex = index;
            if (selectIndex != 3) {
              flag = true;
            } else {
              flag = false;
            }
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            screen[selectIndex]
          ],
        ),
      ),
    );
  }
}
