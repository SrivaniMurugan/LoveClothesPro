// import 'dart:math';

import 'package:flutter/material.dart';
import '../view.dart';
import 'signupbuyer_viewmodel.dart';
import 'signupbuyer_list_tile.dart';
import 'signupbuyer_editor_tile.dart';
// import '../../models/clothes.dart';

class SignupBuyerBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
     return Center(
      child: SelectorView<SignupBuyerViewmodel, int>(
        selector: (_, vm) => vm.dataCount,
        builder: (_, vm, __, ___) {
          print('Build ListView');
           return ListView.separated(
            itemCount: vm.dataCount,
            
            separatorBuilder: (context, index) => Divider(
            color: Colors.blueGrey,
            ),
            
                         itemBuilder: (context, id) =>(vm.editIndex == id)
            ? SignupBuyerEditorTile(id)
            : SignupBuyerListTile(id),
          );
        },
      ),
    );
  }
}