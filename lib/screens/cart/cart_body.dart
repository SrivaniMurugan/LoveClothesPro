// import 'dart:math';

import 'package:flutter/material.dart';
import '../view.dart';
import 'cart_viewmodel.dart';
import 'cart_list_tile.dart';
// import '../../models/clothes.dart';

class CartBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
     return Center(
      child: SelectorView<CartViewmodel, int>(
        selector: (_, vm) => vm.dataCount,
        builder: (_, vm, __, ___) {
          print('Build ListView');
           return ListView.separated(
            itemCount: vm.dataCount,
            
            separatorBuilder: (context, index) => Divider(
            color: Colors.grey,
            ),
            
             itemBuilder: (_,id) => CartListTile(id),
          );
        },
      ),
    );
  }
}