import 'package:flutter/material.dart';

import 'signupseller_appbar.dart';
//import '../Shipping/shipping_app_bar.dart';
import 'signupseller_body.dart';

class SignUpSellerMainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SignUpSellerAppBar(),
      body: SignUpSellerMainBody(),
      //floatingActionButton: (),
    );
  }
}
