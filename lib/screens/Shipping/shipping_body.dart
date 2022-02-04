import 'dart:math';
import 'package:flutter/material.dart';
import 'shipping_editor_tile.dart';
import 'shipping_tile.dart';
import '../../screens/Shipping/shipping_viewmodel.dart';
import '../view.dart';

class ShippingMainBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      
      child: SelectorView<ShippingMainViewmodel, int>(
        selector: (_, vm) => vm.dataCount,
        builder: (_, vm, __, ___) {
          print('Build ListView');
          return ListView.separated(
            
            itemCount: vm.dataCount,
           
            separatorBuilder: (context, index) => Divider(
            color: Colors.transparent,
            ),
            
            itemBuilder: (context, index) =>(vm.editIndex == index)
            ? ShippingEditorTile(index)
            : ShippingTile(index),
            
            
          );
        },
      ),
    );
  }
}
