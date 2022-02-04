import 'package:flutter/material.dart';
import '../view.dart';
import 'profilebuyer_viewmodel.dart';
import 'package:Love.Clothes/screens/cart/cart_screen.dart';
import 'package:Love.Clothes/screens/profilebuyer/profilebuyer_screen.dart';
import 'package:Love.Clothes/screens/homepage/homepage_screen.dart';
import '../../screens/firstpage/firstpage.dart';

Future navigateToCartPage(context) async {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => CartScreen()));
}

Future navigateToProfileBuyerPage(context) async {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => ProfileBuyerMainScreen()));
}

Future navigateToHomepageScreen(context) async {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => DetailsClothesScreen()));
}

Future navigateToWelcomePage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomePage()));
}

class ProfileBuyerMainAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Container(
            alignment: Alignment.topLeft,
            width: 200,
            height: 30,
            child: Column(
              children: [
                new Text(
                  "My Profile",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            )),
        actions: <Widget>[
          SelectorView<ProfileBuyerMainViewmodel, int>(
              selector: (_, vm) => vm.dataCount,
              builder: (_, vm, __, ___) {
                return Row(children: [
                  IconButton(
                    icon: Icon(
                      Icons.home_outlined,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      navigateToHomepageScreen(context);
                    },
                  ),
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
                    },
                  ),
                   IconButton(
              icon: Icon(
                Icons.logout,
                color: Colors.black,
              ),
              onPressed: () {
                navigateToWelcomePage(context);
              }),
                ]);
              }),
        ]);
  }

  @override
  Size get preferredSize => Size.fromHeight(50);
}
