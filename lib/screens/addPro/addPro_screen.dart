import 'package:flutter/material.dart';
import 'addPro_app_bar.dart';
import 'addPro_body.dart';

class AddProMainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AddProMainAppBar(),
      body: AddProMainBody(),
    );
  }
}
