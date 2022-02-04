import 'dart:math';
import 'package:flutter/material.dart';
import 'profilebuyer_editor_tile.dart';
import 'profilebuyer_tile.dart';
import '../../screens/profilebuyer/profilebuyer_viewmodel.dart';
import '../view.dart';

class ProfileBuyerMainBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SelectorView<ProfileBuyerMainViewmodel, int>(
        selector: (_, vm) => vm.dataCount,
        builder: (_, vm, __, ___) {
          print('Build ListView');

          return ListView.separated(
            itemCount: vm.dataCount,
            
            separatorBuilder: (context, index) => Divider(
            color: Colors.transparent,
            ),
            
            itemBuilder: (context, index) =>(vm.editIndex == index)
            ? ProfileBuyerEditorTile(index)
            : ProfileBuyerTile(index),
          );
        },
      ),
    );
  }
}
