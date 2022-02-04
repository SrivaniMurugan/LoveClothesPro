import 'package:flutter/material.dart';

import 'profilebuyer_appbar.dart';
//import '../Shipping/shipping_app_bar.dart';
import 'profilebuyer_body.dart';

class ProfileBuyerMainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProfileBuyerMainAppBar(),
      body: ProfileBuyerMainBody(),
      //floatingActionButton: (),
    );
  }
}
