import 'dart:math';
import 'package:flutter/material.dart';
import '../../models/profilebuyer.dart';
import '../profilebuyer/profilebuyer_viewmodel.dart';
import '../../screens/view.dart';
import 'widgets/custom_text_field.dart';

class ProfileBuyerEditorTile extends StatelessWidget {
  const ProfileBuyerEditorTile(this.index);

  final int index;

  @override
  Widget build(BuildContext context) {
    return SelectorView<ProfileBuyerMainViewmodel, ProfileBuyer>(
      selector: (_, vm) => vm.getProfileBuyer(index),
      builder: (_, vm, profilebuyer, __) {
        print('Build ListTile $index');

        return ListTile(
            title: Center(
                child: Column(children: [
          Container(
            height: 200,
            width: 170,
            child: Icon(
              Icons.person,
              size: 170,
            ),
          ),
          CustomTextField(
            initialValue: '''${profilebuyer.name}''',
            onChanged: (value) {
              vm.getProfileBuyer(index).name = value;
            },
          ),
          CustomTextField(
              initialValue: ''' ${profilebuyer.username}''',
              onChanged: (value) {
                vm.getProfileBuyer(index).username = value;
              }),
          CustomTextField(
              initialValue: '''${profilebuyer.email}''',
              onChanged: (value) {
                vm.getProfileBuyer(index).email = value;
              }),
        ])));
      },
    );
  }
}
