import 'dart:math';
import 'package:flutter/material.dart';
import 'signupseller_tile.dart';
import '../../screens/loginseller/loginseller_viewmodel.dart';
import '../view.dart';

class SignUpSellerMainBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SelectorView<LogInSellerMainViewmodel, int>(
        selector: (_, vm) => vm.dataCount,
        builder: (_, vm, __, ___) {
          print('Build ListView');

          return ListView.separated(
            itemCount: vm.dataCount,
            
            separatorBuilder: (context, index) => Divider(
            color: Colors.transparent,
            ),
            
            itemBuilder: (_, index) => SignUpSellerTile(index)
            //(vm.editIndex == index)
            //? ProfileEditorTile(index)
            //: ProfileTile(index),
          );
        },
      ),
    );
  }
}
