// import 'dart:math';

import 'package:flutter/material.dart';
import '../view.dart';
import 'purchased_viewmodel.dart';
import 'purchased_list_tile.dart';
import 'purchased_editor_tile.dart';
// import '../../models/clothes.dart';

class PurchasedBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
     return Center(
      child: SelectorView<PurchasedViewmodel, int>(
        selector: (_, vm) => vm.dataCount,
        builder: (_, vm, __, ___) {
          print('Build ListView');
           return ListView.separated(
            itemCount: vm.dataCount,
            
            separatorBuilder: (context, index) => Divider(
            color: Colors.blueGrey,
            ),
            
               itemBuilder: (context, id) =>(vm.editIndex == id)
            ? PurchasedEditorTile(id)
            : PurchasedListTile(id),
          );
        },
      ),
    );
  }
}