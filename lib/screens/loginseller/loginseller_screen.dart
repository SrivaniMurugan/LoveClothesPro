import 'package:flutter/material.dart';

import 'loginseller_appbar.dart';
import 'loginseller_body.dart';

class LogInSellerMainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LogInSellerAppBar(),
      body: LogInSellerMainBody(),
    );
  }
}
