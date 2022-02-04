import 'package:flutter/material.dart';
import '../../screens/Shipping/shipping_successful.dart';
import '../view.dart';
import 'shipping_viewmodel.dart';

Future navigateToShippingSuccessful(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => ShippingSuccessful()));
}

class ShippingMainFloat extends StatelessWidget {
  const ShippingMainFloat({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return View<ShippingMainViewmodel>(
      shouldRebuild: false,
      builder: (_, vm, __) {
        print('Build MainFloat + button');
      return FloatingActionButton(   
         child: Icon(Icons.arrow_forward_ios_outlined),
         tooltip: 'Proceed',  
         onPressed: ()  {
          navigateToShippingSuccessful(context);
         }
         );
      },
      );
  }
}
