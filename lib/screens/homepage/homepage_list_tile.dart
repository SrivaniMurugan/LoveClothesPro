// import 'dart:html';

import 'package:flutter/material.dart';

import '../../models/clothes.dart';
import 'homepage_viewmodel.dart';
import '../view.dart';
import 'package:Love.Clothes/screens/cart/cart_screen.dart';


Future navigateToCartPage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen()));
}
class DetailsClothesListTile extends StatelessWidget {
  final int id;
  const DetailsClothesListTile(this.id);

  @override
  Widget build(BuildContext context) {
    return SelectorView<DetailsClothesViewmodel, Clothes>(
      selector: (_, vm) => vm.getClothes(id),
      builder: (context, vm, clothes, __) {
       return ListTile(
          title: Row(
            children: <Widget>[
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Card(
                          child: Container(
                            height: 250,
                            width: 460,
                            child: Column(children: <Widget>[
                              Container(
                                height: 140,
                                width: 170,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('${clothes.clothImage}'),
                                  ),
                                ),
                              ),
                              Text('${clothes.clothCode}',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              Text('${clothes.name}',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              Text('RM ${clothes.price}',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                      color: Colors.red)),
                                Text('${clothes.description}',
                                  style: TextStyle(
                                      fontSize: 13)),
                            ]),
                          ),
                        )
                      ],
                    )
                  ]),
            ],
          ),
          subtitle: RaisedButton(
            onPressed: () {
                 navigateToCartPage(context);
            },
            textColor: Colors.black,
            color: Colors.orange,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Text('Add Cart'),
          ),

          //onLongPress: () => vm.switchmode(index),

        );
      },
    );
  }
}
