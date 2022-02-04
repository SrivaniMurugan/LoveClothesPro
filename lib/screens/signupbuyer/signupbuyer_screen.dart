
import 'package:flutter/material.dart';

import 'signupbuyer_body.dart';
import 'signupbuyer_appbar.dart';

class SignupBuyerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SignupBuyerAppBar(),
      body: SignupBuyerBody(),
    );
  }
}

