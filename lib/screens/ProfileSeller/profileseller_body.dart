import 'package:flutter/material.dart';
import 'profileseller_editor_tile.dart';
import '../../screens/ProfileSeller/profileseller_viewmodel.dart';
import '../view.dart';

class ProfileSellerMainBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SelectorView<ProfileSellerMainViewmodel, int>(
        selector: (_, vm) => vm.dataCount,
        builder: (_, vm, __, ___) {
          print('Build ListView');

          return ListView.separated(
            itemCount: vm.dataCount,
            
            separatorBuilder: (context, index) => Divider(
            color: Colors.transparent,
            ),
            
            itemBuilder: (_, index) => ProfileSellerEditorTile(index)
          );
        },
      ),
    );
  }
}
