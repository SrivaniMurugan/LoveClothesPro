import 'package:flutter/material.dart';

import 'profileseller_appbar.dart';
import 'profileseller_body.dart';

class ProfileSellerMainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProfileSellerMainAppBar(),
      body: ProfileSellerMainBody(),
    );
  }
}
