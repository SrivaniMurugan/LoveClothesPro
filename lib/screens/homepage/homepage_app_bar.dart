
import 'package:flutter/material.dart';
import 'package:Love.Clothes/screens/cart/cart_screen.dart';
import '../../screens/profilebuyer/profilebuyer_screen.dart';
import '../../screens/firstpage/firstpage.dart';

Future navigateToCartPage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen()));
}

Future navigateToProfileBuyerPage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileBuyerMainScreen()));
}

Future navigateToWelcomePage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomePage()));
}

class DetailsClothesAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
            alignment: Alignment.topLeft,
            width: 200,
            height: 30,
            child: Column(
              children: [
                new Text(
                  "Homepage",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            )),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
            ),
            onPressed: () {
               navigateToCartPage(context);
            },
          ),
          IconButton(
              icon: Icon(
                Icons.person_outline,
                color: Colors.black,
              ),
              onPressed: () {
                navigateToProfileBuyerPage(context);
              }),
              IconButton(
              icon: Icon(
                Icons.logout,
                color: Colors.black,
              ),
              onPressed: () {
                navigateToWelcomePage(context);
              }),
        ],
      ),

    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50);
}





