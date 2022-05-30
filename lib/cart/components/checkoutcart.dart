import 'package:flutter/material.dart';

class CheckOutCart extends StatelessWidget {
  double sum;
  CheckOutCart({this.sum});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: [
            Center(
              child: Text(""),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
              child: FlatButton(
                height: 50,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                    side: BorderSide(color: Colors.lightBlueAccent)),
                color: Colors.white,
                textColor: Colors.lightBlueAccent,
                onPressed: () {},
                child: Text(
                  "Sum:${sum}\$",
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
              ),
            ),

            Expanded(child: FlatButton(
              height: 50,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                  side: BorderSide(color: Colors.lightBlueAccent)),
              onPressed: () {},
              color: Colors.lightBlueAccent,
              textColor: Colors.white,
              child: Text("Check out".toUpperCase(),
                  style: TextStyle(fontSize: 14)),
            ),)
          ],
        )
      ],
    );
  }
}
