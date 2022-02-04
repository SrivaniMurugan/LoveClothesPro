import 'package:Love.Clothes/models/clothes.dart';
import 'package:flutter/material.dart';

import 'homepage_app_bar.dart';
import 'homepage_body.dart';


class DetailsClothesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DetailsClothesAppBar(),
      body: DetailsClothesBody(),
    );
  }
}
