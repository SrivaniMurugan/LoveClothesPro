import 'package:flutter/material.dart';
import 'addPro_editor_tile.dart';
import '../../screens/addPro/addPro_viewmodel.dart';
import '../view.dart';

class AddProMainBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SelectorView<AddProMainViewmodel, int>(
        selector: (_, vm) => vm.dataCount,
        builder: (_, vm, __, ___) {
          print('Build ListView');

          return ListView.separated(
              itemCount: vm.dataCount,
              separatorBuilder: (context, index) => Divider(
                    color: Colors.transparent,
                  ),
              itemBuilder: (_, index) => AddProEditorTile(index)
              );
        },
      ),
    );
  }
}
