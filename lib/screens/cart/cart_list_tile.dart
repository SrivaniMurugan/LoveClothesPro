// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:Love.Clothes/screens/purchased/purchased_screen.dart';

import '../../models/cartclothes.dart';
import 'cart_viewmodel.dart';
import '../view.dart';
// import '../ui_utils.dart';

Future navigateToPurchasedPage(context) async {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => PurchasedScreen()));
}

class CartListTile extends StatelessWidget {
  final int id;
  const CartListTile(this.id);

  @override
  Widget build(BuildContext context) {
    return SelectorView<CartViewmodel, CartClothes>(
      selector: (_, vm) => vm.getCartClothes(id),
      builder: (context, vm, cartclothes, __) {
        return ListTile(
          leading: new Image.asset(
            '${cartclothes.clothImage}',
            width: 150.0,
            height: 150.0,
          ),
          title: new Text('${cartclothes.name}',
          style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        )),
          subtitle: new Column(
            children: <Widget>[
              new Container(
                // alignment: Alignment.bottomRight,
                child: new Text('${cartclothes.clothCode}',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        )),
              ),
              
               new Container(
                // alignment: Alignment.bottomRight,
                child: new Text('RM ${cartclothes.price}',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.red)),
              ),
             
              RaisedButton(
                onPressed: () {
                  navigateToPurchasedPage(context);
                },
                
                textColor: Colors.black,
                color: Colors.orangeAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Text('Purchased Form'),
              ),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                onPressed: () {
                  vm.removeCartClothes(id);
                },
                textColor: Colors.black,
                color: Colors.orangeAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Text('Remove'),
              ),
            ],
          ),
        );
      },
    );
  }
}
