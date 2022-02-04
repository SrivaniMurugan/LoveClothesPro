// import 'dart:math';

import 'package:flutter/material.dart';
import '../view.dart';
import 'loginbuyer_viewmodel.dart';
import 'loginbuyer_list_tile.dart';
import 'loginbuyer_editor_tile.dart';
// import '../../models/clothes.dart';

class LoginBuyerBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SelectorView<LoginBuyerViewmodel, int>(
        selector: (_, vm) => vm.dataCount,
        builder: (_, vm, __, ___) {
          print('Build ListView');
          return ListView.separated(
            itemCount: vm.dataCount,
            separatorBuilder: (context, index) => Divider(
              color: Colors.blueGrey,
            ),
            itemBuilder: (context, id) => (vm.editIndex == id)
                ? LoginBuyerEditorTile(id)
                : LoginBuyerListTile(id),
          );
        },
      ),
    );
  }
}
