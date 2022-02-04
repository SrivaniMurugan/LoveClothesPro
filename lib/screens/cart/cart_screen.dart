import 'package:Love.Clothes/models/clothes.dart';
import 'package:flutter/material.dart';

import 'cart_app_bar.dart';
import 'cart_body.dart';


class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CartAppBar(),
      body: CartBody(),
    );
  }
}
