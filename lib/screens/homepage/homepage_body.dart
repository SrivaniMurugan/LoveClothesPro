// import 'dart:math';

import 'package:flutter/material.dart';
import '../view.dart';
import 'homepage_viewmodel.dart';
import 'homepage_list_tile.dart';
// import '../../models/clothes.dart';

class DetailsClothesBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
     return Center(
      child: SelectorView<DetailsClothesViewmodel, int>(
        selector: (_, vm) => vm.dataCount,
        builder: (_, vm, __, ___) {
          print('Build ListView');
           return ListView.separated(
            itemCount: vm.dataCount,
            
            separatorBuilder: (context, index) => Divider(
            color: Colors.blueGrey,
            ),
            
             itemBuilder: (_,id) => DetailsClothesListTile(id),
          );
        },
      ),
    );
  }
}