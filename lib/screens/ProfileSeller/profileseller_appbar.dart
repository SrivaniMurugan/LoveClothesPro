import 'package:flutter/material.dart';
import '../view.dart';
import 'profileseller_viewmodel.dart';
import '../../screens/Shipping/shipping_screen.dart';
import '../../screens/addPro/addPro_screen.dart';
import 'package:Love.Clothes/screens/ProfileSeller/profileseller_screen.dart';
import '../../screens/firstpage/firstpage.dart';

Future navigateToShippingMainScreen(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => ShippingMainScreen()));
}

Future navigateToAddProMainScreen(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => AddProMainScreen()));
}

Future navigateToProfileSellerMainScreen(context) async {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => ProfileSellerMainScreen()));
}

Future navigateToWelcomePage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomePage()));
}

class ProfileSellerMainAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
               actions: <Widget> [
       SelectorView<ProfileSellerMainViewmodel, int>(
          selector: (_, vm) => vm.dataCount,
          builder: (_, vm, __, ___) {
             return Row(
               children: [
                   IconButton(
                   icon: Icon(
                   Icons.shopping_bag_outlined,
                   color: Colors.black,
                   ),
              onPressed: () {
        navigateToAddProMainScreen(context); 
               },
                   ),
                   IconButton(
                   icon: Icon(  
                   Icons.add_shopping_cart_rounded,
                   color: Colors.black,
                   ),
              onPressed: () {
        navigateToShippingMainScreen(context);
               },),
               IconButton(
                   icon: Icon(
                   Icons.person_outline,
                   color: Colors.black,
                   ),
              onPressed: () {
        navigateToProfileSellerMainScreen(context);
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
               ],
               
       );
          }),
               ]);
  }

  @override
  Size get preferredSize => Size.fromHeight(50);
}
