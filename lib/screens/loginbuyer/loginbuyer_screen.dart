
import 'package:flutter/material.dart';

import 'loginbuyer_body.dart';
import 'loginbuyer_appbar.dart';

class LoginBuyerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LoginBuyerAppBar(),
      body: LoginBuyerBody(),
    );
  }
}

