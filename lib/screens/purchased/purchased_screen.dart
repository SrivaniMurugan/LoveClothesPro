import 'package:Love.Clothes/models/clothes.dart';
import 'package:flutter/material.dart';

import 'purchased_app_bar.dart';
import 'purchased_body.dart';


class PurchasedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PurchasedAppBar(),
      body: PurchasedBody(),
    );
  }
}
