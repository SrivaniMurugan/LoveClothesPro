import 'package:flutter/material.dart';
import 'shipping_app_bar.dart';
import 'shipping_body.dart';
import 'shipping_float.dart';

class ShippingMainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ShippingMainAppBar(),
      body: ShippingMainBody(),
      floatingActionButton: ShippingMainFloat(),
    );
  }
}
