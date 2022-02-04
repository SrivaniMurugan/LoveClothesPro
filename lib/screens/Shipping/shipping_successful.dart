import 'package:flutter/material.dart';
import '../../screens/Shipping/shipping_screen.dart';
import '../../screens/addPro/addPro_screen.dart';
import 'package:Love.Clothes/screens/ProfileSeller/profileseller_screen.dart';

Future navigateToShippingMainScreen(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => ShippingMainScreen()));
}

Future navigateToAddProMainScreen(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => AddProMainScreen()));
}

Future navigateToProfileMainScreen(context) async {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => ProfileSellerMainScreen()));
}
class ShippingSuccessful extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
           title: Container(
          width: 600,
          height: 40,
          color: Colors.white,
          child: Center(
            child: TextField(),
          )),
      actions: <Widget>[
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
        navigateToProfileMainScreen(context);
               },
        ),
      ],
            ),
          body: Center(
            child: Container(
             height: 270,
             margin: const EdgeInsets.all(10.0),
             color: Colors.yellow,
             alignment: Alignment.center,
             child: Text("Please dropoff the parcel within 5 days",
             style: TextStyle(fontSize: 20)),     
              
              
            )
          ),
     
    );
  }
}
